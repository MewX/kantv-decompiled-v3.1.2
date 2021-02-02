package org.fourthline.cling.model.types.csv;

import java.util.Date;
import org.fourthline.cling.model.types.InvalidValueException;

public class CSVDate extends CSV<Date> {
    public CSVDate() {
    }

    public CSVDate(String str) throws InvalidValueException {
        super(str);
    }
}
