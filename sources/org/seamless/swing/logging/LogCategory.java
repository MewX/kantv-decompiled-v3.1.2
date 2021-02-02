package org.seamless.swing.logging;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;

public class LogCategory {
    private List<Group> groups = new ArrayList();
    private String name;

    public static class Group {
        private boolean enabled;
        private List<LoggerLevel> loggerLevels = new ArrayList();
        private String name;
        private List<LoggerLevel> previousLevels = new ArrayList();

        public Group(String str) {
            this.name = str;
        }

        public Group(String str, LoggerLevel[] loggerLevelArr) {
            this.name = str;
            this.loggerLevels = Arrays.asList(loggerLevelArr);
        }

        public String getName() {
            return this.name;
        }

        public List<LoggerLevel> getLoggerLevels() {
            return this.loggerLevels;
        }

        public boolean isEnabled() {
            return this.enabled;
        }

        public void setEnabled(boolean z) {
            this.enabled = z;
        }

        public List<LoggerLevel> getPreviousLevels() {
            return this.previousLevels;
        }

        public void setPreviousLevels(List<LoggerLevel> list) {
            this.previousLevels = list;
        }
    }

    public static class LoggerLevel {
        private Level level;
        private String logger;

        public LoggerLevel(String str, Level level2) {
            this.logger = str;
            this.level = level2;
        }

        public String getLogger() {
            return this.logger;
        }

        public Level getLevel() {
            return this.level;
        }
    }

    public LogCategory(String str) {
        this.name = str;
    }

    public LogCategory(String str, Group[] groupArr) {
        this.name = str;
        this.groups = Arrays.asList(groupArr);
    }

    public String getName() {
        return this.name;
    }

    public List<Group> getGroups() {
        return this.groups;
    }

    public void addGroup(String str, LoggerLevel[] loggerLevelArr) {
        this.groups.add(new Group(str, loggerLevelArr));
    }
}
