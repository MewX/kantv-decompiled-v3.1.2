package org.seamless.util.time;

import java.io.Serializable;

public class DateFormat implements Serializable {
    protected String label;
    protected String pattern;

    public enum Preset {
        DD_MM_YYYY_DOT(new DateFormat("31.12.2010", "dd.MM.yyyy")),
        MM_DD_YYYY_DOT(new DateFormat("12.31.2010", "MM.dd.yyyy")),
        YYYY_MM_DD_DOT(new DateFormat("2010.12.31", "yyyy.MM.dd")),
        YYYY_DD_MM_DOT(new DateFormat("2010.31.12", "yyyy.dd.MM")),
        DD_MM_YYYY_SLASH(new DateFormat("31/12/2010", "dd/MM/yyyy")),
        MM_DD_YYYY_SLASH(new DateFormat("12/31/2010", "MM/dd/yyyy")),
        YYYY_MM_DD_SLASH(new DateFormat("2010/12/31", "yyyy/MM/dd")),
        YYYY_DD_MM_SLASH(new DateFormat("2010/31/12", "yyyy/dd/MM")),
        YYYY_MMM_DD(new DateFormat("2010 Dec 31", "yyyy MMM dd")),
        DD_MMM_YYYY(new DateFormat("31 Dec 2010", "dd MMM yyyy")),
        MMM_DD_YYYY(new DateFormat("Dec 31 2010", "MMM dd yyyy"));
        
        protected DateFormat dateFormat;

        private Preset(DateFormat dateFormat2) {
            this.dateFormat = dateFormat2;
        }

        public DateFormat getDateFormat() {
            return this.dateFormat;
        }
    }

    public DateFormat() {
    }

    DateFormat(String str, String str2) {
        this.label = str;
        this.pattern = str2;
    }

    public DateFormat(String str) {
        this.label = str;
        this.pattern = str;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPattern() {
        return this.pattern;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DateFormat dateFormat = (DateFormat) obj;
        String str = this.pattern;
        return str == null ? dateFormat.pattern == null : str.equals(dateFormat.pattern);
    }

    public int hashCode() {
        String str = this.pattern;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getLabel());
        sb.append(", Pattern: ");
        sb.append(getPattern());
        return sb.toString();
    }
}
