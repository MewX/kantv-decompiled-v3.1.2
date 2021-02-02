package org.fourthline.cling.support.contentdirectory.callback;

import java.util.logging.Logger;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.contentdirectory.DIDLParser;
import org.fourthline.cling.support.model.DIDLContent;
import org.fourthline.cling.support.model.SearchResult;
import org.fourthline.cling.support.model.SortCriterion;

public abstract class Search extends ActionCallback {
    public static final String CAPS_WILDCARD = "*";
    private static Logger log = Logger.getLogger(Search.class.getName());

    public enum Status {
        NO_CONTENT("No Content"),
        LOADING("Loading..."),
        OK(r4);
        
        private String defaultMessage;

        private Status(String str) {
            this.defaultMessage = str;
        }

        public String getDefaultMessage() {
            return this.defaultMessage;
        }
    }

    public abstract void received(ActionInvocation actionInvocation, DIDLContent dIDLContent);

    public boolean receivedRaw(ActionInvocation actionInvocation, SearchResult searchResult) {
        return true;
    }

    public abstract void updateStatus(Status status);

    public Search(Service service, String str, String str2) {
        Service service2 = service;
        String str3 = str;
        String str4 = str2;
        this(service2, str3, str4, "*", 0, null, new SortCriterion[0]);
    }

    public Search(Service service, String str, String str2, String str3, long j, Long l, SortCriterion... sortCriterionArr) {
        super(new ActionInvocation(service.getAction("Search")));
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating browse action for container ID: ");
        sb.append(str);
        logger.fine(sb.toString());
        getActionInvocation().setInput("ContainerID", str);
        getActionInvocation().setInput("SearchCriteria", str2);
        getActionInvocation().setInput("Filter", str3);
        getActionInvocation().setInput("StartingIndex", new UnsignedIntegerFourBytes(j));
        ActionInvocation actionInvocation = getActionInvocation();
        if (l == null) {
            l = getDefaultMaxResults();
        }
        actionInvocation.setInput("RequestedCount", new UnsignedIntegerFourBytes(l.longValue()));
        getActionInvocation().setInput("SortCriteria", SortCriterion.toString(sortCriterionArr));
    }

    public void run() {
        updateStatus(Status.LOADING);
        super.run();
    }

    public void success(ActionInvocation actionInvocation) {
        log.fine("Successful search action, reading output argument values");
        SearchResult searchResult = new SearchResult(actionInvocation.getOutput("Result").getValue().toString(), (UnsignedIntegerFourBytes) actionInvocation.getOutput("NumberReturned").getValue(), (UnsignedIntegerFourBytes) actionInvocation.getOutput("TotalMatches").getValue(), (UnsignedIntegerFourBytes) actionInvocation.getOutput("UpdateID").getValue());
        if (!receivedRaw(actionInvocation, searchResult) || searchResult.getCountLong() <= 0 || searchResult.getResult().length() <= 0) {
            received(actionInvocation, new DIDLContent());
            updateStatus(Status.NO_CONTENT);
            return;
        }
        try {
            received(actionInvocation, new DIDLParser().parse(searchResult.getResult()));
            updateStatus(Status.OK);
        } catch (Exception e) {
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse DIDL XML response: ");
            sb.append(e);
            actionInvocation.setFailure(new ActionException(errorCode, sb.toString(), (Throwable) e));
            failure(actionInvocation, null);
        }
    }

    public Long getDefaultMaxResults() {
        return Long.valueOf(999);
    }
}
