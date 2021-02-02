package org.fourthline.cling.support.contentdirectory;

import com.tencent.open.SocialConstants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.fourthline.cling.binding.xml.Descriptor.Device;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.DIDLAttribute;
import org.fourthline.cling.support.model.DIDLContent;
import org.fourthline.cling.support.model.DIDLObject;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property;
import org.fourthline.cling.support.model.DIDLObject.Property.DC;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.LANGUAGE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.PUBLISHER;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RELATION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RIGHTS;
import org.fourthline.cling.support.model.DIDLObject.Property.DLNA;
import org.fourthline.cling.support.model.DIDLObject.Property.DLNA.PROFILE_ID;
import org.fourthline.cling.support.model.DIDLObject.Property.SEC;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ACTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ALBUM;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ALBUM_ART_URI;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST_DISCO_URI;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.AUTHOR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.CHANNEL_NAME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.CHANNEL_NR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.DIRECTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.DVD_REGION_CODE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ICON;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LYRICS_URI;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.NAMESPACE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ORIGINAL_TRACK_NUMBER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PLAYLIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PRODUCER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RADIO_BAND;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RADIO_CALL_SIGN;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RADIO_STATION_ID;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RATING;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.REGION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.SCHEDULED_END_TIME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.SCHEDULED_START_TIME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_FREE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MAX_PARTITION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_TOTAL;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_USED;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.TOC;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.USER_ANNOTATION;
import org.fourthline.cling.support.model.DescMeta;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.ProtocolInfo;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.WriteStatus;
import org.fourthline.cling.support.model.container.Container;
import org.fourthline.cling.support.model.item.Item;
import org.seamless.util.Exceptions;
import org.seamless.util.io.IO;
import org.seamless.xhtml.XHTML.ATTR;
import org.seamless.xml.SAXParser;
import org.seamless.xml.SAXParser.Handler;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class DIDLParser extends SAXParser {
    public static final String UNKNOWN_TITLE = "Unknown Title";
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(DIDLParser.class.getName());

    public class ContainerHandler extends DIDLObjectHandler<Container> {
        public ContainerHandler(Container container, Handler handler) {
            super(container, handler);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            if (DIDLContent.NAMESPACE_URI.equals(str)) {
                if (str2.equals("item")) {
                    Item createItem = DIDLParser.this.createItem(attributes);
                    ((Container) getInstance()).addItem(createItem);
                    DIDLParser.this.createItemHandler(createItem, this);
                } else if (str2.equals(SocialConstants.PARAM_APP_DESC)) {
                    DescMeta createDescMeta = DIDLParser.this.createDescMeta(attributes);
                    ((Container) getInstance()).addDescMetadata(createDescMeta);
                    DIDLParser.this.createDescMetaHandler(createDescMeta, this);
                } else if (str2.equals("res")) {
                    Res createResource = DIDLParser.this.createResource(attributes);
                    if (createResource != null) {
                        ((Container) getInstance()).addResource(createResource);
                        DIDLParser.this.createResHandler(createResource, this);
                    }
                }
            }
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            if (NAMESPACE.URI.equals(str)) {
                String str4 = "includeDerived";
                String str5 = "true";
                String str6 = "name";
                if ("searchClass".equals(str2)) {
                    ((Container) getInstance()).getSearchClasses().add(new Class(getCharacters(), getAttributes().getValue(str6), str5.equals(getAttributes().getValue(str4))));
                } else if ("createClass".equals(str2)) {
                    ((Container) getInstance()).getCreateClasses().add(new Class(getCharacters(), getAttributes().getValue(str6), str5.equals(getAttributes().getValue(str4))));
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            if (!DIDLContent.NAMESPACE_URI.equals(str) || !"container".equals(str2)) {
                return false;
            }
            if (((Container) getInstance()).getTitle() == null) {
                Logger access$000 = DIDLParser.log;
                StringBuilder sb = new StringBuilder();
                sb.append("In DIDL content, missing 'dc:title' element for container: ");
                sb.append(((Container) getInstance()).getId());
                access$000.warning(sb.toString());
            }
            if (((Container) getInstance()).getClazz() == null) {
                Logger access$0002 = DIDLParser.log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("In DIDL content, missing 'upnp:class' element for container: ");
                sb2.append(((Container) getInstance()).getId());
                access$0002.warning(sb2.toString());
            }
            return true;
        }
    }

    public abstract class DIDLObjectHandler<I extends DIDLObject> extends Handler<I> {
        protected DIDLObjectHandler(I i, Handler handler) {
            super(i, handler);
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            if (DC.NAMESPACE.URI.equals(str)) {
                if ("title".equals(str2)) {
                    ((DIDLObject) getInstance()).setTitle(getCharacters());
                } else if ("creator".equals(str2)) {
                    ((DIDLObject) getInstance()).setCreator(getCharacters());
                } else if (SocialConstants.PARAM_COMMENT.equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new DESCRIPTION(getCharacters()));
                } else if ("publisher".equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new PUBLISHER(new Person(getCharacters())));
                } else if ("contributor".equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new CONTRIBUTOR(new Person(getCharacters())));
                } else if ("date".equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new DATE(getCharacters()));
                } else if (IjkMediaMeta.IJKM_KEY_LANGUAGE.equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new LANGUAGE(getCharacters()));
                } else if ("rights".equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new RIGHTS(getCharacters()));
                } else if ("relation".equals(str2)) {
                    ((DIDLObject) getInstance()).addProperty(new RELATION(URI.create(getCharacters())));
                }
            } else if (!NAMESPACE.URI.equals(str)) {
            } else {
                if ("writeStatus".equals(str2)) {
                    try {
                        ((DIDLObject) getInstance()).setWriteStatus(WriteStatus.valueOf(getCharacters()));
                    } catch (Exception unused) {
                        Logger access$000 = DIDLParser.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Ignoring invalid writeStatus value: ");
                        sb.append(getCharacters());
                        access$000.info(sb.toString());
                    }
                } else if (ATTR.CLASS.equals(str2)) {
                    ((DIDLObject) getInstance()).setClazz(new Class(getCharacters(), getAttributes().getValue("name")));
                } else {
                    String str4 = "role";
                    if ("artist".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new ARTIST(new PersonWithRole(getCharacters(), getAttributes().getValue(str4))));
                    } else if ("actor".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new ACTOR(new PersonWithRole(getCharacters(), getAttributes().getValue(str4))));
                    } else if ("author".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new AUTHOR(new PersonWithRole(getCharacters(), getAttributes().getValue(str4))));
                    } else if ("producer".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new PRODUCER(new Person(getCharacters())));
                    } else if ("director".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new DIRECTOR(new Person(getCharacters())));
                    } else if ("longDescription".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new LONG_DESCRIPTION(getCharacters()));
                    } else if ("storageUsed".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new STORAGE_USED(Long.valueOf(getCharacters())));
                    } else if ("storageTotal".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new STORAGE_TOTAL(Long.valueOf(getCharacters())));
                    } else if ("storageFree".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new STORAGE_FREE(Long.valueOf(getCharacters())));
                    } else if ("storageMaxPartition".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new STORAGE_MAX_PARTITION(Long.valueOf(getCharacters())));
                    } else if ("storageMedium".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new STORAGE_MEDIUM(StorageMedium.valueOrVendorSpecificOf(getCharacters())));
                    } else if ("genre".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new GENRE(getCharacters()));
                    } else if ("album".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new ALBUM(getCharacters()));
                    } else if ("playlist".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new PLAYLIST(getCharacters()));
                    } else if (TtmlNode.TAG_REGION.equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new REGION(getCharacters()));
                    } else if ("rating".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new RATING(getCharacters()));
                    } else if ("toc".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new TOC(getCharacters()));
                    } else if ("albumArtURI".equals(str2)) {
                        ALBUM_ART_URI album_art_uri = new ALBUM_ART_URI(URI.create(getCharacters()));
                        Attributes attributes = getAttributes();
                        for (int i = 0; i < attributes.getLength(); i++) {
                            if ("profileID".equals(attributes.getLocalName(i))) {
                                album_art_uri.addAttribute(new PROFILE_ID(new DIDLAttribute(DLNA.NAMESPACE.URI, Device.DLNA_PREFIX, attributes.getValue(i))));
                            }
                        }
                        ((DIDLObject) getInstance()).addProperty(album_art_uri);
                    } else if ("artistDiscographyURI".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new ARTIST_DISCO_URI(URI.create(getCharacters())));
                    } else if ("lyricsURI".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new LYRICS_URI(URI.create(getCharacters())));
                    } else if (SettingsJsonConstants.APP_ICON_KEY.equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new ICON(URI.create(getCharacters())));
                    } else if ("radioCallSign".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new RADIO_CALL_SIGN(getCharacters()));
                    } else if ("radioStationID".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new RADIO_STATION_ID(getCharacters()));
                    } else if ("radioBand".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new RADIO_BAND(getCharacters()));
                    } else if ("channelNr".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new CHANNEL_NR(Integer.valueOf(getCharacters())));
                    } else if ("channelName".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new CHANNEL_NAME(getCharacters()));
                    } else if ("scheduledStartTime".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new SCHEDULED_START_TIME(getCharacters()));
                    } else if ("scheduledEndTime".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new SCHEDULED_END_TIME(getCharacters()));
                    } else if ("DVDRegionCode".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new DVD_REGION_CODE(Integer.valueOf(getCharacters())));
                    } else if ("originalTrackNumber".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new ORIGINAL_TRACK_NUMBER(Integer.valueOf(getCharacters())));
                    } else if ("userAnnotation".equals(str2)) {
                        ((DIDLObject) getInstance()).addProperty(new USER_ANNOTATION(getCharacters()));
                    }
                }
            }
        }
    }

    public class DescMetaHandler extends Handler<DescMeta> {
        protected Element current = ((Document) getInstance().getMetadata()).getDocumentElement();

        public DescMetaHandler(DescMeta descMeta, Handler handler) {
            super(descMeta, handler);
            descMeta.setMetadata(descMeta.createMetadataDocument());
        }

        public DescMeta<Document> getInstance() {
            return (DescMeta) super.getInstance();
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            Element createElementNS = ((Document) getInstance().getMetadata()).createElementNS(str, str3);
            for (int i = 0; i < attributes.getLength(); i++) {
                createElementNS.setAttributeNS(attributes.getURI(i), attributes.getQName(i), attributes.getValue(i));
            }
            this.current.appendChild(createElementNS);
            this.current = createElementNS;
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            if (!isLastElement(str, str2, str3)) {
                if (getCharacters().length() > 0 && !getCharacters().matches("[\\t\\n\\x0B\\f\\r\\s]+")) {
                    this.current.appendChild(((Document) getInstance().getMetadata()).createTextNode(getCharacters()));
                }
                this.current = (Element) this.current.getParentNode();
                this.characters = new StringBuilder();
                this.attributes = null;
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            return DIDLContent.NAMESPACE_URI.equals(str) && SocialConstants.PARAM_APP_DESC.equals(str2);
        }
    }

    public class ItemHandler extends DIDLObjectHandler<Item> {
        public ItemHandler(Item item, Handler handler) {
            super(item, handler);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            if (DIDLContent.NAMESPACE_URI.equals(str)) {
                if (str2.equals("res")) {
                    Res createResource = DIDLParser.this.createResource(attributes);
                    if (createResource != null) {
                        ((Item) getInstance()).addResource(createResource);
                        DIDLParser.this.createResHandler(createResource, this);
                    }
                } else if (str2.equals(SocialConstants.PARAM_APP_DESC)) {
                    DescMeta createDescMeta = DIDLParser.this.createDescMeta(attributes);
                    ((Item) getInstance()).addDescMetadata(createDescMeta);
                    DIDLParser.this.createDescMetaHandler(createDescMeta, this);
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            if (!DIDLContent.NAMESPACE_URI.equals(str) || !"item".equals(str2)) {
                return false;
            }
            if (((Item) getInstance()).getTitle() == null) {
                Logger access$000 = DIDLParser.log;
                StringBuilder sb = new StringBuilder();
                sb.append("In DIDL content, missing 'dc:title' element for item: ");
                sb.append(((Item) getInstance()).getId());
                access$000.warning(sb.toString());
            }
            if (((Item) getInstance()).getClazz() == null) {
                Logger access$0002 = DIDLParser.log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("In DIDL content, missing 'upnp:class' element for item: ");
                sb2.append(((Item) getInstance()).getId());
                access$0002.warning(sb2.toString());
            }
            return true;
        }
    }

    protected class ResHandler extends Handler<Res> {
        public ResHandler(Res res, Handler handler) {
            super(res, handler);
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            ((Res) getInstance()).setValue(getCharacters());
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            return DIDLContent.NAMESPACE_URI.equals(str) && "res".equals(str2);
        }
    }

    public class RootHandler extends Handler<DIDLContent> {
        RootHandler(DIDLContent dIDLContent, SAXParser sAXParser) {
            super(dIDLContent, sAXParser);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            if (DIDLContent.NAMESPACE_URI.equals(str)) {
                if (str2.equals("container")) {
                    Container createContainer = DIDLParser.this.createContainer(attributes);
                    ((DIDLContent) getInstance()).addContainer(createContainer);
                    DIDLParser.this.createContainerHandler(createContainer, this);
                } else if (str2.equals("item")) {
                    Item createItem = DIDLParser.this.createItem(attributes);
                    ((DIDLContent) getInstance()).addItem(createItem);
                    DIDLParser.this.createItemHandler(createItem, this);
                } else if (str2.equals(SocialConstants.PARAM_APP_DESC)) {
                    DescMeta createDescMeta = DIDLParser.this.createDescMeta(attributes);
                    ((DIDLContent) getInstance()).addDescMetadata(createDescMeta);
                    DIDLParser.this.createDescMetaHandler(createDescMeta, this);
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            if (!DIDLContent.NAMESPACE_URI.equals(str) || !"DIDL-Lite".equals(str2)) {
                return false;
            }
            ((DIDLContent) getInstance()).replaceGenericContainerAndItems();
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public String booleanToInt(boolean z) {
        return z ? "1" : "0";
    }

    public DIDLContent parseResource(String str) throws Exception {
        InputStream inputStream = null;
        try {
            inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(str);
            return parse(IO.readLines(inputStream));
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public DIDLContent parse(String str) throws Exception {
        if (str == null || str.length() == 0) {
            throw new RuntimeException("Null or empty XML");
        }
        DIDLContent dIDLContent = new DIDLContent();
        createRootHandler(dIDLContent, this);
        log.fine("Parsing DIDL XML content");
        parse(new InputSource(new StringReader(str)));
        return dIDLContent;
    }

    /* access modifiers changed from: protected */
    public RootHandler createRootHandler(DIDLContent dIDLContent, SAXParser sAXParser) {
        return new RootHandler(dIDLContent, sAXParser);
    }

    /* access modifiers changed from: protected */
    public ContainerHandler createContainerHandler(Container container, Handler handler) {
        return new ContainerHandler(container, handler);
    }

    /* access modifiers changed from: protected */
    public ItemHandler createItemHandler(Item item, Handler handler) {
        return new ItemHandler(item, handler);
    }

    /* access modifiers changed from: protected */
    public ResHandler createResHandler(Res res, Handler handler) {
        return new ResHandler(res, handler);
    }

    /* access modifiers changed from: protected */
    public DescMetaHandler createDescMetaHandler(DescMeta descMeta, Handler handler) {
        return new DescMetaHandler(descMeta, handler);
    }

    /* access modifiers changed from: protected */
    public Container createContainer(Attributes attributes) {
        Container container = new Container();
        container.setId(attributes.getValue("id"));
        container.setParentID(attributes.getValue("parentID"));
        String str = "childCount";
        if (attributes.getValue(str) != null) {
            container.setChildCount(Integer.valueOf(attributes.getValue(str)));
        }
        try {
            Boolean bool = (Boolean) Builtin.BOOLEAN.getDatatype().valueOf(attributes.getValue("restricted"));
            if (bool != null) {
                container.setRestricted(bool.booleanValue());
            }
            Boolean bool2 = (Boolean) Builtin.BOOLEAN.getDatatype().valueOf(attributes.getValue("searchable"));
            if (bool2 != null) {
                container.setSearchable(bool2.booleanValue());
            }
        } catch (Exception unused) {
        }
        return container;
    }

    /* access modifiers changed from: protected */
    public Item createItem(Attributes attributes) {
        Item item = new Item();
        item.setId(attributes.getValue("id"));
        item.setParentID(attributes.getValue("parentID"));
        try {
            Boolean bool = (Boolean) Builtin.BOOLEAN.getDatatype().valueOf(attributes.getValue("restricted"));
            if (bool != null) {
                item.setRestricted(bool.booleanValue());
            }
        } catch (Exception unused) {
        }
        String str = "refID";
        if (attributes.getValue(str) != null) {
            item.setRefID(attributes.getValue(str));
        }
        return item;
    }

    /* access modifiers changed from: protected */
    public Res createResource(Attributes attributes) {
        Res res = new Res();
        String str = "importUri";
        if (attributes.getValue(str) != null) {
            res.setImportUri(URI.create(attributes.getValue(str)));
        }
        try {
            res.setProtocolInfo(new ProtocolInfo(attributes.getValue("protocolInfo")));
            String str2 = "size";
            if (attributes.getValue(str2) != null) {
                res.setSize(toLongOrNull(attributes.getValue(str2)));
            }
            String str3 = "duration";
            if (attributes.getValue(str3) != null) {
                res.setDuration(attributes.getValue(str3));
            }
            String str4 = IjkMediaMeta.IJKM_KEY_BITRATE;
            if (attributes.getValue(str4) != null) {
                res.setBitrate(toLongOrNull(attributes.getValue(str4)));
            }
            String str5 = "sampleFrequency";
            if (attributes.getValue(str5) != null) {
                res.setSampleFrequency(toLongOrNull(attributes.getValue(str5)));
            }
            String str6 = "bitsPerSample";
            if (attributes.getValue(str6) != null) {
                res.setBitsPerSample(toLongOrNull(attributes.getValue(str6)));
            }
            String str7 = "nrAudioChannels";
            if (attributes.getValue(str7) != null) {
                res.setNrAudioChannels(toLongOrNull(attributes.getValue(str7)));
            }
            String str8 = "colorDepth";
            if (attributes.getValue(str8) != null) {
                res.setColorDepth(toLongOrNull(attributes.getValue(str8)));
            }
            String str9 = "protection";
            if (attributes.getValue(str9) != null) {
                res.setProtection(attributes.getValue(str9));
            }
            String str10 = "resolution";
            if (attributes.getValue(str10) != null) {
                res.setResolution(attributes.getValue(str10));
            }
            return res;
        } catch (InvalidValueException e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("In DIDL content, invalid resource protocol info: ");
            sb.append(Exceptions.unwrap(e));
            logger.warning(sb.toString());
            return null;
        }
    }

    private Long toLongOrNull(String str) {
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public DescMeta createDescMeta(Attributes attributes) {
        DescMeta descMeta = new DescMeta();
        descMeta.setId(attributes.getValue("id"));
        String str = "type";
        if (attributes.getValue(str) != null) {
            descMeta.setType(attributes.getValue(str));
        }
        String str2 = "nameSpace";
        if (attributes.getValue(str2) != null) {
            descMeta.setNameSpace(URI.create(attributes.getValue(str2)));
        }
        return descMeta;
    }

    public String generate(DIDLContent dIDLContent) throws Exception {
        return generate(dIDLContent, false);
    }

    public String generate(DIDLContent dIDLContent, boolean z) throws Exception {
        return documentToString(buildDOM(dIDLContent, z), true);
    }

    /* access modifiers changed from: protected */
    public String documentToString(Document document, boolean z) throws Exception {
        Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
        if (z) {
            newTransformer.setOutputProperty("omit-xml-declaration", "yes");
        }
        StringWriter stringWriter = new StringWriter();
        newTransformer.transform(new DOMSource(document), new StreamResult(stringWriter));
        return stringWriter.toString();
    }

    /* access modifiers changed from: protected */
    public Document buildDOM(DIDLContent dIDLContent, boolean z) throws Exception {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        Document newDocument = newInstance.newDocumentBuilder().newDocument();
        generateRoot(dIDLContent, newDocument, z);
        return newDocument;
    }

    /* access modifiers changed from: protected */
    public void generateRoot(DIDLContent dIDLContent, Document document, boolean z) {
        Element createElementNS = document.createElementNS(DIDLContent.NAMESPACE_URI, "DIDL-Lite");
        document.appendChild(createElementNS);
        String str = "http://www.w3.org/2000/xmlns/";
        createElementNS.setAttributeNS(str, "xmlns:upnp", NAMESPACE.URI);
        createElementNS.setAttributeNS(str, "xmlns:dc", DC.NAMESPACE.URI);
        createElementNS.setAttributeNS(str, "xmlns:sec", SEC.NAMESPACE.URI);
        for (Container container : dIDLContent.getContainers()) {
            if (container != null) {
                generateContainer(container, document, createElementNS, z);
            }
        }
        for (Item item : dIDLContent.getItems()) {
            if (item != null) {
                generateItem(item, document, createElementNS);
            }
        }
        for (DescMeta descMeta : dIDLContent.getDescMetadata()) {
            if (descMeta != null) {
                generateDescMetadata(descMeta, document, createElementNS);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void generateContainer(Container container, Document document, Element element, boolean z) {
        if (container.getClazz() != null) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, "container");
            if (container.getId() != null) {
                appendNewElement.setAttribute("id", container.getId());
                if (container.getParentID() != null) {
                    appendNewElement.setAttribute("parentID", container.getParentID());
                    if (container.getChildCount() != null) {
                        appendNewElement.setAttribute("childCount", Integer.toString(container.getChildCount().intValue()));
                    }
                    appendNewElement.setAttribute("restricted", booleanToInt(container.isRestricted()));
                    appendNewElement.setAttribute("searchable", booleanToInt(container.isSearchable()));
                    String title = container.getTitle();
                    if (title == null) {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Missing 'dc:title' element for container: ");
                        sb.append(container.getId());
                        logger.warning(sb.toString());
                        title = UNKNOWN_TITLE;
                    }
                    String str = DC.NAMESPACE.URI;
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement, "dc:title", (Object) title, str);
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement, "dc:creator", (Object) container.getCreator(), str);
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement, "upnp:writeStatus", (Object) container.getWriteStatus(), NAMESPACE.URI);
                    appendClass(document, appendNewElement, container.getClazz(), "upnp:class", false);
                    for (Class appendClass : container.getSearchClasses()) {
                        appendClass(document, appendNewElement, appendClass, "upnp:searchClass", true);
                    }
                    for (Class appendClass2 : container.getCreateClasses()) {
                        appendClass(document, appendNewElement, appendClass2, "upnp:createClass", true);
                    }
                    Document document2 = document;
                    Element element2 = appendNewElement;
                    Container container2 = container;
                    appendProperties(document2, element2, container2, "upnp", NAMESPACE.class, NAMESPACE.URI);
                    appendProperties(document2, element2, container2, "dc", DC.NAMESPACE.class, DC.NAMESPACE.URI);
                    if (z) {
                        for (Item item : container.getItems()) {
                            if (item != null) {
                                generateItem(item, document, appendNewElement);
                            }
                        }
                    }
                    for (Res res : container.getResources()) {
                        if (res != null) {
                            generateResource(res, document, appendNewElement);
                        }
                    }
                    for (DescMeta descMeta : container.getDescMetadata()) {
                        if (descMeta != null) {
                            generateDescMetadata(descMeta, document, appendNewElement);
                        }
                    }
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Missing parent id on container: ");
                sb2.append(container);
                throw new NullPointerException(sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Missing id on container: ");
            sb3.append(container);
            throw new NullPointerException(sb3.toString());
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Missing 'upnp:class' element for container: ");
        sb4.append(container.getId());
        throw new RuntimeException(sb4.toString());
    }

    /* access modifiers changed from: protected */
    public void generateItem(Item item, Document document, Element element) {
        if (item.getClazz() != null) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, "item");
            if (item.getId() != null) {
                appendNewElement.setAttribute("id", item.getId());
                if (item.getParentID() != null) {
                    appendNewElement.setAttribute("parentID", item.getParentID());
                    if (item.getRefID() != null) {
                        appendNewElement.setAttribute("refID", item.getRefID());
                    }
                    appendNewElement.setAttribute("restricted", booleanToInt(item.isRestricted()));
                    String title = item.getTitle();
                    if (title == null) {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Missing 'dc:title' element for item: ");
                        sb.append(item.getId());
                        logger.warning(sb.toString());
                        title = UNKNOWN_TITLE;
                    }
                    String str = DC.NAMESPACE.URI;
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement, "dc:title", (Object) title, str);
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement, "dc:creator", (Object) item.getCreator(), str);
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement, "upnp:writeStatus", (Object) item.getWriteStatus(), NAMESPACE.URI);
                    Document document2 = document;
                    Element element2 = appendNewElement;
                    appendClass(document2, element2, item.getClazz(), "upnp:class", false);
                    Item item2 = item;
                    appendProperties(document2, element2, item2, "upnp", NAMESPACE.class, NAMESPACE.URI);
                    appendProperties(document2, element2, item2, "dc", DC.NAMESPACE.class, DC.NAMESPACE.URI);
                    appendProperties(document2, element2, item2, Device.SEC_PREFIX, SEC.NAMESPACE.class, SEC.NAMESPACE.URI);
                    for (Res res : item.getResources()) {
                        if (res != null) {
                            generateResource(res, document, appendNewElement);
                        }
                    }
                    for (DescMeta descMeta : item.getDescMetadata()) {
                        if (descMeta != null) {
                            generateDescMetadata(descMeta, document, appendNewElement);
                        }
                    }
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Missing parent id on item: ");
                sb2.append(item);
                throw new NullPointerException(sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Missing id on item: ");
            sb3.append(item);
            throw new NullPointerException(sb3.toString());
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Missing 'upnp:class' element for item: ");
        sb4.append(item.getId());
        throw new RuntimeException(sb4.toString());
    }

    /* access modifiers changed from: protected */
    public void generateResource(Res res, Document document, Element element) {
        if (res.getValue() == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Missing resource URI value");
            sb.append(res);
            throw new RuntimeException(sb.toString());
        } else if (res.getProtocolInfo() != null) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, "res", res.getValue());
            appendNewElement.setAttribute("protocolInfo", res.getProtocolInfo().toString());
            if (res.getImportUri() != null) {
                appendNewElement.setAttribute("importUri", res.getImportUri().toString());
            }
            if (res.getSize() != null) {
                appendNewElement.setAttribute("size", res.getSize().toString());
            }
            if (res.getDuration() != null) {
                appendNewElement.setAttribute("duration", res.getDuration());
            }
            if (res.getBitrate() != null) {
                appendNewElement.setAttribute(IjkMediaMeta.IJKM_KEY_BITRATE, res.getBitrate().toString());
            }
            if (res.getSampleFrequency() != null) {
                appendNewElement.setAttribute("sampleFrequency", res.getSampleFrequency().toString());
            }
            if (res.getBitsPerSample() != null) {
                appendNewElement.setAttribute("bitsPerSample", res.getBitsPerSample().toString());
            }
            if (res.getNrAudioChannels() != null) {
                appendNewElement.setAttribute("nrAudioChannels", res.getNrAudioChannels().toString());
            }
            if (res.getColorDepth() != null) {
                appendNewElement.setAttribute("colorDepth", res.getColorDepth().toString());
            }
            if (res.getProtection() != null) {
                appendNewElement.setAttribute("protection", res.getProtection());
            }
            if (res.getResolution() != null) {
                appendNewElement.setAttribute("resolution", res.getResolution());
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Missing resource protocol info: ");
            sb2.append(res);
            throw new RuntimeException(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void generateDescMetadata(DescMeta descMeta, Document document, Element element) {
        if (descMeta.getId() == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Missing id of description metadata: ");
            sb.append(descMeta);
            throw new RuntimeException(sb.toString());
        } else if (descMeta.getNameSpace() != null) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, SocialConstants.PARAM_APP_DESC);
            appendNewElement.setAttribute("id", descMeta.getId());
            appendNewElement.setAttribute("nameSpace", descMeta.getNameSpace().toString());
            if (descMeta.getType() != null) {
                appendNewElement.setAttribute("type", descMeta.getType());
            }
            populateDescMetadata(appendNewElement, descMeta);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Missing namespace of description metadata: ");
            sb2.append(descMeta);
            throw new RuntimeException(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void populateDescMetadata(Element element, DescMeta descMeta) {
        if (descMeta.getMetadata() instanceof Document) {
            NodeList childNodes = ((Document) descMeta.getMetadata()).getDocumentElement().getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                if (item.getNodeType() == 1) {
                    element.appendChild(element.getOwnerDocument().importNode(item, true));
                }
            }
            return;
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Unknown desc metadata content, please override populateDescMetadata(): ");
        sb.append(descMeta.getMetadata());
        logger.warning(sb.toString());
    }

    /* access modifiers changed from: protected */
    public void appendProperties(Document document, Element element, DIDLObject dIDLObject, String str, Class<? extends Property.NAMESPACE> cls, String str2) {
        Property[] propertiesByNamespace;
        for (Property property : dIDLObject.getPropertiesByNamespace(cls)) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(":");
            sb.append(property.getDescriptorName());
            Element createElementNS = document.createElementNS(str2, sb.toString());
            element.appendChild(createElementNS);
            property.setOnElement(createElementNS);
        }
    }

    /* access modifiers changed from: protected */
    public void appendClass(Document document, Element element, Class classR, String str, boolean z) {
        Element appendNewElementIfNotNull = XMLUtil.appendNewElementIfNotNull(document, element, str, (Object) classR.getValue(), NAMESPACE.URI);
        if (classR.getFriendlyName() != null && classR.getFriendlyName().length() > 0) {
            appendNewElementIfNotNull.setAttribute("name", classR.getFriendlyName());
        }
        if (z) {
            appendNewElementIfNotNull.setAttribute("includeDerived", Boolean.toString(classR.isIncludeDerived()));
        }
    }

    public void debugXML(String str) {
        if (log.isLoggable(Level.FINE)) {
            String str2 = "-------------------------------------------------------------------------------------";
            log.fine(str2);
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("\n");
            sb.append(str);
            logger.fine(sb.toString());
            log.fine(str2);
        }
    }
}
