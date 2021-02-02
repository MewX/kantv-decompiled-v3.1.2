package org.seamless.xhtml;

import java.net.URI;

public class Href {
    private URI uri;

    public Href(URI uri2) {
        this.uri = uri2;
    }

    public URI getURI() {
        return this.uri;
    }

    public static Href fromString(String str) {
        if (str == null) {
            return null;
        }
        return new Href(URI.create(str.replaceAll(" ", "%20")));
    }

    public String toString() {
        return getURI().toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.uri.equals(((Href) obj).uri);
    }

    public int hashCode() {
        return this.uri.hashCode();
    }
}
