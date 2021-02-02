package org.fourthline.cling.model.meta;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.types.BinHexDatatype;
import org.seamless.util.MimeType;
import org.seamless.util.URIUtil;
import org.seamless.util.io.IO;

public class Icon implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariable.class.getName());
    private final byte[] data;
    private final int depth;
    private Device device;
    private final int height;
    private final MimeType mimeType;
    private final URI uri;
    private final int width;

    public Icon(String str, int i, int i2, int i3, URI uri2) {
        this((str == null || str.length() <= 0) ? null : MimeType.valueOf(str), i, i2, i3, uri2, (byte[]) null);
    }

    public Icon(String str, int i, int i2, int i3, URL url) throws IOException {
        this(str, i, i2, i3, new File(URIUtil.toURI(url)));
    }

    public Icon(String str, int i, int i2, int i3, File file) throws IOException {
        this(str, i, i2, i3, file.getName(), IO.readBytes(file));
    }

    public Icon(String str, int i, int i2, int i3, String str2, InputStream inputStream) throws IOException {
        this(str, i, i2, i3, str2, IO.readBytes(inputStream));
    }

    public Icon(String str, int i, int i2, int i3, String str2, byte[] bArr) {
        this((str == null || str.length() <= 0) ? null : MimeType.valueOf(str), i, i2, i3, URI.create(str2), bArr);
    }

    public Icon(String str, int i, int i2, int i3, String str2, String str3) {
        byte[] valueOf = (str3 == null || str3.equals("")) ? null : new BinHexDatatype().valueOf(str3);
        this(str, i, i2, i3, str2, valueOf);
    }

    protected Icon(MimeType mimeType2, int i, int i2, int i3, URI uri2, byte[] bArr) {
        this.mimeType = mimeType2;
        this.width = i;
        this.height = i2;
        this.depth = i3;
        this.uri = uri2;
        this.data = bArr;
    }

    public MimeType getMimeType() {
        return this.mimeType;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getDepth() {
        return this.depth;
    }

    public URI getUri() {
        return this.uri;
    }

    public byte[] getData() {
        return this.data;
    }

    public Device getDevice() {
        return this.device;
    }

    /* access modifiers changed from: 0000 */
    public void setDevice(Device device2) {
        if (this.device == null) {
            this.device = device2;
            return;
        }
        throw new IllegalStateException("Final value has been set already, model is immutable");
    }

    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        String str = "UPnP specification violation of: ";
        if (getMimeType() == null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(getDevice());
            logger.warning(sb.toString());
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Invalid icon, missing mime type: ");
            sb2.append(this);
            logger2.warning(sb2.toString());
        }
        if (getWidth() == 0) {
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(getDevice());
            logger3.warning(sb3.toString());
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Invalid icon, missing width: ");
            sb4.append(this);
            logger4.warning(sb4.toString());
        }
        if (getHeight() == 0) {
            Logger logger5 = log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(str);
            sb5.append(getDevice());
            logger5.warning(sb5.toString());
            Logger logger6 = log;
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Invalid icon, missing height: ");
            sb6.append(this);
            logger6.warning(sb6.toString());
        }
        if (getDepth() == 0) {
            Logger logger7 = log;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(str);
            sb7.append(getDevice());
            logger7.warning(sb7.toString());
            Logger logger8 = log;
            StringBuilder sb8 = new StringBuilder();
            sb8.append("Invalid icon, missing bitmap depth: ");
            sb8.append(this);
            logger8.warning(sb8.toString());
        }
        String str2 = "uri";
        if (getUri() == null) {
            arrayList.add(new ValidationError(getClass(), str2, "URL is required"));
        } else {
            try {
                if (getUri().toURL() == null) {
                    throw new MalformedURLException();
                }
            } catch (MalformedURLException e) {
                Class cls = getClass();
                StringBuilder sb9 = new StringBuilder();
                sb9.append("URL must be valid: ");
                sb9.append(e.getMessage());
                arrayList.add(new ValidationError(cls, str2, sb9.toString()));
            } catch (IllegalArgumentException unused) {
            }
        }
        return arrayList;
    }

    public Icon deepCopy() {
        Icon icon = new Icon(getMimeType(), getWidth(), getHeight(), getDepth(), getUri(), getData());
        return icon;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Icon(");
        sb.append(getWidth());
        sb.append("x");
        sb.append(getHeight());
        sb.append(", MIME: ");
        sb.append(getMimeType());
        sb.append(") ");
        sb.append(getUri());
        return sb.toString();
    }
}
