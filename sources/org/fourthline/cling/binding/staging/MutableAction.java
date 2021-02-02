package org.fourthline.cling.binding.staging;

import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;

public class MutableAction {
    public List<MutableActionArgument> arguments = new ArrayList();
    public String name;

    public Action build() {
        return new Action(this.name, createActionArgumennts());
    }

    public ActionArgument[] createActionArgumennts() {
        ActionArgument[] actionArgumentArr = new ActionArgument[this.arguments.size()];
        int i = 0;
        for (MutableActionArgument build : this.arguments) {
            int i2 = i + 1;
            actionArgumentArr[i] = build.build();
            i = i2;
        }
        return actionArgumentArr;
    }
}
