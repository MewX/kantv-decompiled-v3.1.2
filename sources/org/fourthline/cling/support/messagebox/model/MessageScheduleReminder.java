package org.fourthline.cling.support.messagebox.model;

import org.fourthline.cling.support.messagebox.model.Message.Category;
import org.fourthline.cling.support.messagebox.model.Message.DisplayType;
import org.fourthline.cling.support.messagebox.parser.MessageElement;

public class MessageScheduleReminder extends Message {
    private final String body;
    private final DateTime endTime;
    private final String location;
    private final NumberName owner;
    private final DateTime startTime;
    private final String subject;

    public MessageScheduleReminder(DateTime dateTime, NumberName numberName, String str, DateTime dateTime2, String str2, String str3) {
        this(DisplayType.MAXIMUM, dateTime, numberName, str, dateTime2, str2, str3);
    }

    public MessageScheduleReminder(DisplayType displayType, DateTime dateTime, NumberName numberName, String str, DateTime dateTime2, String str2, String str3) {
        super(Category.SCHEDULE_REMINDER, displayType);
        this.startTime = dateTime;
        this.owner = numberName;
        this.subject = str;
        this.endTime = dateTime2;
        this.location = str2;
        this.body = str3;
    }

    public DateTime getStartTime() {
        return this.startTime;
    }

    public NumberName getOwner() {
        return this.owner;
    }

    public String getSubject() {
        return this.subject;
    }

    public DateTime getEndTime() {
        return this.endTime;
    }

    public String getLocation() {
        return this.location;
    }

    public String getBody() {
        return this.body;
    }

    public void appendMessageElements(MessageElement messageElement) {
        getStartTime().appendMessageElements((MessageElement) messageElement.createChild("StartTime"));
        getOwner().appendMessageElements((MessageElement) messageElement.createChild("Owner"));
        ((MessageElement) messageElement.createChild("Subject")).setContent(getSubject());
        getEndTime().appendMessageElements((MessageElement) messageElement.createChild("EndTime"));
        ((MessageElement) messageElement.createChild("Location")).setContent(getLocation());
        ((MessageElement) messageElement.createChild("Body")).setContent(getBody());
    }
}
