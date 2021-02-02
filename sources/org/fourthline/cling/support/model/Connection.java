package org.fourthline.cling.support.model;

import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class Connection {

    public enum Error {
        ERROR_NONE,
        ERROR_COMMAND_ABORTED,
        ERROR_NOT_ENABLED_FOR_INTERNET,
        ERROR_USER_DISCONNECT,
        ERROR_ISP_DISCONNECT,
        ERROR_IDLE_DISCONNECT,
        ERROR_FORCED_DISCONNECT,
        ERROR_NO_CARRIER,
        ERROR_IP_CONFIGURATION,
        ERROR_UNKNOWN
    }

    public enum Status {
        Unconfigured,
        Connecting,
        Connected,
        PendingDisconnect,
        Disconnecting,
        Disconnected
    }

    public static class StatusInfo {
        private Error lastError;
        private Status status;
        private long uptimeSeconds;

        public StatusInfo(Status status2, UnsignedIntegerFourBytes unsignedIntegerFourBytes, Error error) {
            this(status2, unsignedIntegerFourBytes.getValue().longValue(), error);
        }

        public StatusInfo(Status status2, long j, Error error) {
            this.status = status2;
            this.uptimeSeconds = j;
            this.lastError = error;
        }

        public Status getStatus() {
            return this.status;
        }

        public long getUptimeSeconds() {
            return this.uptimeSeconds;
        }

        public UnsignedIntegerFourBytes getUptime() {
            return new UnsignedIntegerFourBytes(getUptimeSeconds());
        }

        public Error getLastError() {
            return this.lastError;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            StatusInfo statusInfo = (StatusInfo) obj;
            return this.uptimeSeconds == statusInfo.uptimeSeconds && this.lastError == statusInfo.lastError && this.status == statusInfo.status;
        }

        public int hashCode() {
            int hashCode = this.status.hashCode() * 31;
            long j = this.uptimeSeconds;
            return ((hashCode + ((int) (j ^ (j >>> 32)))) * 31) + this.lastError.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("(");
            sb.append(getClass().getSimpleName());
            sb.append(") ");
            sb.append(getStatus());
            return sb.toString();
        }
    }

    public enum Type {
        Unconfigured,
        IP_Routed,
        IP_Bridged
    }
}
