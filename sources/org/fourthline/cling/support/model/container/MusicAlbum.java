package org.fourthline.cling.support.model.container;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ALBUM_ART_URI;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PRODUCER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.TOC;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.item.Item;
import org.fourthline.cling.support.model.item.MusicTrack;

public class MusicAlbum extends Album {
    public static final Class CLASS = new Class("object.container.album.musicAlbum");

    public MusicAlbum() {
        setClazz(CLASS);
    }

    public MusicAlbum(Container container) {
        super(container);
    }

    public MusicAlbum(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.getId(), str2, str3, num, (List<MusicTrack>) new ArrayList<MusicTrack>());
    }

    public MusicAlbum(String str, Container container, String str2, String str3, Integer num, List<MusicTrack> list) {
        this(str, container.getId(), str2, str3, num, list);
    }

    public MusicAlbum(String str, String str2, String str3, String str4, Integer num) {
        this(str, str2, str3, str4, num, (List<MusicTrack>) new ArrayList<MusicTrack>());
    }

    public MusicAlbum(String str, String str2, String str3, String str4, Integer num, List<MusicTrack> list) {
        super(str, str2, str3, str4, num);
        setClazz(CLASS);
        addMusicTracks(list);
    }

    public PersonWithRole getFirstArtist() {
        return (PersonWithRole) getFirstPropertyValue(ARTIST.class);
    }

    public PersonWithRole[] getArtists() {
        List propertyValues = getPropertyValues(ARTIST.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public MusicAlbum setArtists(PersonWithRole[] personWithRoleArr) {
        removeProperties(ARTIST.class);
        for (PersonWithRole artist : personWithRoleArr) {
            addProperty(new ARTIST(artist));
        }
        return this;
    }

    public String getFirstGenre() {
        return (String) getFirstPropertyValue(GENRE.class);
    }

    public String[] getGenres() {
        List propertyValues = getPropertyValues(GENRE.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public MusicAlbum setGenres(String[] strArr) {
        removeProperties(GENRE.class);
        for (String genre : strArr) {
            addProperty(new GENRE(genre));
        }
        return this;
    }

    public Person getFirstProducer() {
        return (Person) getFirstPropertyValue(PRODUCER.class);
    }

    public Person[] getProducers() {
        List propertyValues = getPropertyValues(PRODUCER.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public MusicAlbum setProducers(Person[] personArr) {
        removeProperties(PRODUCER.class);
        for (Person producer : personArr) {
            addProperty(new PRODUCER(producer));
        }
        return this;
    }

    public URI getFirstAlbumArtURI() {
        return (URI) getFirstPropertyValue(ALBUM_ART_URI.class);
    }

    public URI[] getAlbumArtURIs() {
        List propertyValues = getPropertyValues(ALBUM_ART_URI.class);
        return (URI[]) propertyValues.toArray(new URI[propertyValues.size()]);
    }

    public MusicAlbum setAlbumArtURIs(URI[] uriArr) {
        removeProperties(ALBUM_ART_URI.class);
        for (URI album_art_uri : uriArr) {
            addProperty(new ALBUM_ART_URI(album_art_uri));
        }
        return this;
    }

    public String getToc() {
        return (String) getFirstPropertyValue(TOC.class);
    }

    public MusicAlbum setToc(String str) {
        replaceFirstProperty(new TOC(str));
        return this;
    }

    public MusicTrack[] getMusicTracks() {
        ArrayList arrayList = new ArrayList();
        for (Item item : getItems()) {
            if (item instanceof MusicTrack) {
                arrayList.add((MusicTrack) item);
            }
        }
        return (MusicTrack[]) arrayList.toArray(new MusicTrack[arrayList.size()]);
    }

    public void addMusicTracks(List<MusicTrack> list) {
        addMusicTracks((MusicTrack[]) list.toArray(new MusicTrack[list.size()]));
    }

    public void addMusicTracks(MusicTrack[] musicTrackArr) {
        if (musicTrackArr != null) {
            for (MusicTrack musicTrack : musicTrackArr) {
                musicTrack.setAlbum(getTitle());
                addItem(musicTrack);
            }
        }
    }
}
