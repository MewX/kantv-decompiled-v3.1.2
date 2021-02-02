package org.fourthline.cling.support.model.container;

import java.net.URI;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST_DISCO_URI;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;

public class MusicArtist extends PersonContainer {
    public static final Class CLASS = new Class("object.container.person.musicArtist");

    public MusicArtist() {
        setClazz(CLASS);
    }

    public MusicArtist(Container container) {
        super(container);
    }

    public MusicArtist(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.getId(), str2, str3, num);
    }

    public MusicArtist(String str, String str2, String str3, String str4, Integer num) {
        super(str, str2, str3, str4, num);
        setClazz(CLASS);
    }

    public String getFirstGenre() {
        return (String) getFirstPropertyValue(GENRE.class);
    }

    public String[] getGenres() {
        List propertyValues = getPropertyValues(GENRE.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public MusicArtist setGenres(String[] strArr) {
        removeProperties(GENRE.class);
        for (String genre : strArr) {
            addProperty(new GENRE(genre));
        }
        return this;
    }

    public URI getArtistDiscographyURI() {
        return (URI) getFirstPropertyValue(ARTIST_DISCO_URI.class);
    }

    public MusicArtist setArtistDiscographyURI(URI uri) {
        replaceFirstProperty(new ARTIST_DISCO_URI(uri));
        return this;
    }
}
