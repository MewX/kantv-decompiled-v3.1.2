package javax.jmdns.impl.tasks;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.Timer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.impl.JmDNSImpl;

public class RecordReaper extends DNSTask {
    static Logger logger = Logger.getLogger(RecordReaper.class.getName());

    public RecordReaper(JmDNSImpl jmDNSImpl) {
        super(jmDNSImpl);
    }

    public String getName() {
        StringBuilder sb = new StringBuilder();
        sb.append("RecordReaper(");
        sb.append(getDns() != null ? getDns().getName() : "");
        sb.append(")");
        return sb.toString();
    }

    public void start(Timer timer) {
        if (!getDns().isCanceling() && !getDns().isCanceled()) {
            timer.schedule(this, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        }
    }

    public void run() {
        if (!getDns().isCanceling() && !getDns().isCanceled()) {
            if (logger.isLoggable(Level.FINEST)) {
                Logger logger2 = logger;
                StringBuilder sb = new StringBuilder();
                sb.append(getName());
                sb.append(".run() JmDNS reaping cache");
                logger2.finest(sb.toString());
            }
            getDns().cleanCache();
        }
    }
}
