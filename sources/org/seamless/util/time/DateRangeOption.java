package org.seamless.util.time;

import java.io.Serializable;
import org.seamless.util.time.DateRange.Preset;

public enum DateRangeOption implements Serializable {
    ALL("All dates", Preset.ALL.getDateRange()),
    MONTH_TO_DATE("Month to date", Preset.MONTH_TO_DATE.getDateRange()),
    YEAR_TO_DATE("Year to date", Preset.YEAR_TO_DATE.getDateRange()),
    LAST_MONTH("Last month", Preset.LAST_MONTH.getDateRange()),
    LAST_YEAR("Last year", Preset.LAST_YEAR.getDateRange()),
    CUSTOM("Custom dates", null);
    
    DateRange dateRange;
    String label;

    private DateRangeOption(String str, DateRange dateRange2) {
        this.label = str;
        this.dateRange = dateRange2;
    }

    public String getLabel() {
        return this.label;
    }

    public DateRange getDateRange() {
        return this.dateRange;
    }
}
