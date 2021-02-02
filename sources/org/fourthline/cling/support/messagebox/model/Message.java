package org.fourthline.cling.support.messagebox.model;

import java.util.Random;
import org.fourthline.cling.support.messagebox.parser.MessageDOM;
import org.fourthline.cling.support.messagebox.parser.MessageDOMParser;
import org.fourthline.cling.support.messagebox.parser.MessageElement;
import org.seamless.xml.DOM;
import org.seamless.xml.ParserException;

public abstract class Message implements ElementAppender {
    private final Category category;
    private DisplayType displayType;
    private final int id;
    protected final Random randomGenerator;

    public enum Category {
        SMS(r2),
        INCOMING_CALL("Incoming Call"),
        SCHEDULE_REMINDER("Schedule Reminder");
        
        public String text;

        private Category(String str) {
            this.text = str;
        }
    }

    public enum DisplayType {
        MINIMUM("Minimum"),
        MAXIMUM("Maximum");
        
        public String text;

        private DisplayType(String str) {
            this.text = str;
        }
    }

    public Message(Category category2, DisplayType displayType2) {
        this(0, category2, displayType2);
    }

    public Message(int i, Category category2, DisplayType displayType2) {
        this.randomGenerator = new Random();
        if (i == 0) {
            i = this.randomGenerator.nextInt(Integer.MAX_VALUE);
        }
        this.id = i;
        this.category = category2;
        this.displayType = displayType2;
    }

    public int getId() {
        return this.id;
    }

    public Category getCategory() {
        return this.category;
    }

    public DisplayType getDisplayType() {
        return this.displayType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.id == ((Message) obj).id;
    }

    public int hashCode() {
        return this.id;
    }

    public String toString() {
        String str = "";
        try {
            MessageDOMParser messageDOMParser = new MessageDOMParser();
            MessageDOM messageDOM = (MessageDOM) messageDOMParser.createDocument();
            MessageElement createRoot = messageDOM.createRoot(messageDOMParser.createXPath(), "Message");
            ((MessageElement) createRoot.createChild("Category")).setContent(getCategory().text);
            ((MessageElement) createRoot.createChild("DisplayType")).setContent(getDisplayType().text);
            appendMessageElements(createRoot);
            return messageDOMParser.print((DOM) messageDOM, 0, false).replaceAll("<Message xmlns=\"urn:samsung-com:messagebox-1-0\">", str).replaceAll("</Message>", str);
        } catch (ParserException e) {
            throw new RuntimeException(e);
        }
    }
}
