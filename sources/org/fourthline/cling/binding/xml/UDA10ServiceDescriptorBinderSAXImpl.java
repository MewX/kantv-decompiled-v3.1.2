package org.fourthline.cling.binding.xml;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;
import org.fourthline.cling.binding.staging.MutableAction;
import org.fourthline.cling.binding.staging.MutableActionArgument;
import org.fourthline.cling.binding.staging.MutableAllowedValueRange;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.staging.MutableStateVariable;
import org.fourthline.cling.binding.xml.Descriptor.Service.ATTRIBUTE;
import org.fourthline.cling.binding.xml.Descriptor.Service.ELEMENT;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.ActionArgument.Direction;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.meta.StateVariableEventDetails;
import org.fourthline.cling.model.types.CustomDatatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.seamless.xml.SAXParser;
import org.seamless.xml.SAXParser.Handler;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class UDA10ServiceDescriptorBinderSAXImpl extends UDA10ServiceDescriptorBinderImpl {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(ServiceDescriptorBinder.class.getName());

    protected static class ActionArgumentHandler extends ServiceDescriptorHandler<MutableActionArgument> {
        public static final ELEMENT EL = ELEMENT.argument;

        public ActionArgumentHandler(MutableActionArgument mutableActionArgument, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableActionArgument, serviceDescriptorHandler);
        }

        public void endElement(ELEMENT element) throws SAXException {
            int i = AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()];
            if (i == 1) {
                ((MutableActionArgument) getInstance()).name = getCharacters();
            } else if (i == 2) {
                String characters = getCharacters();
                try {
                    ((MutableActionArgument) getInstance()).direction = Direction.valueOf(characters.toUpperCase(Locale.ROOT));
                } catch (IllegalArgumentException unused) {
                    Logger access$000 = UDA10ServiceDescriptorBinderSAXImpl.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("UPnP specification violation: Invalid action argument direction, assuming 'IN': ");
                    sb.append(characters);
                    access$000.warning(sb.toString());
                    ((MutableActionArgument) getInstance()).direction = Direction.IN;
                }
            } else if (i == 3) {
                ((MutableActionArgument) getInstance()).relatedStateVariable = getCharacters();
            } else if (i == 4) {
                ((MutableActionArgument) getInstance()).retval = true;
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class ActionArgumentListHandler extends ServiceDescriptorHandler<List<MutableActionArgument>> {
        public static final ELEMENT EL = ELEMENT.argumentList;

        public ActionArgumentListHandler(List<MutableActionArgument> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(ActionArgumentHandler.EL)) {
                MutableActionArgument mutableActionArgument = new MutableActionArgument();
                ((List) getInstance()).add(mutableActionArgument);
                new ActionArgumentHandler(mutableActionArgument, this);
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class ActionHandler extends ServiceDescriptorHandler<MutableAction> {
        public static final ELEMENT EL = ELEMENT.action;

        public ActionHandler(MutableAction mutableAction, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableAction, serviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(ActionArgumentListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                ((MutableAction) getInstance()).arguments = arrayList;
                new ActionArgumentListHandler(arrayList, this);
            }
        }

        public void endElement(ELEMENT element) throws SAXException {
            if (AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()] == 1) {
                ((MutableAction) getInstance()).name = getCharacters();
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class ActionListHandler extends ServiceDescriptorHandler<List<MutableAction>> {
        public static final ELEMENT EL = ELEMENT.actionList;

        public ActionListHandler(List<MutableAction> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(ActionHandler.EL)) {
                MutableAction mutableAction = new MutableAction();
                ((List) getInstance()).add(mutableAction);
                new ActionHandler(mutableAction, this);
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class AllowedValueListHandler extends ServiceDescriptorHandler<List<String>> {
        public static final ELEMENT EL = ELEMENT.allowedValueList;

        public AllowedValueListHandler(List<String> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        public void endElement(ELEMENT element) throws SAXException {
            if (AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()] == 7) {
                ((List) getInstance()).add(getCharacters());
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class AllowedValueRangeHandler extends ServiceDescriptorHandler<MutableAllowedValueRange> {
        public static final ELEMENT EL = ELEMENT.allowedValueRange;

        public AllowedValueRangeHandler(MutableAllowedValueRange mutableAllowedValueRange, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableAllowedValueRange, serviceDescriptorHandler);
        }

        public void endElement(ELEMENT element) throws SAXException {
            try {
                switch (element) {
                    case minimum:
                        ((MutableAllowedValueRange) getInstance()).minimum = Long.valueOf(getCharacters());
                        return;
                    case maximum:
                        ((MutableAllowedValueRange) getInstance()).maximum = Long.valueOf(getCharacters());
                        return;
                    case step:
                        ((MutableAllowedValueRange) getInstance()).step = Long.valueOf(getCharacters());
                        return;
                    default:
                        return;
                }
            } catch (Exception unused) {
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class RootHandler extends ServiceDescriptorHandler<MutableService> {
        public RootHandler(MutableService mutableService, SAXParser sAXParser) {
            super(mutableService, sAXParser);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(ActionListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                ((MutableService) getInstance()).actions = arrayList;
                new ActionListHandler(arrayList, this);
            }
            if (element.equals(StateVariableListHandler.EL)) {
                ArrayList arrayList2 = new ArrayList();
                ((MutableService) getInstance()).stateVariables = arrayList2;
                new StateVariableListHandler(arrayList2, this);
            }
        }
    }

    protected static class ServiceDescriptorHandler<I> extends Handler<I> {
        public void endElement(ELEMENT element) throws SAXException {
        }

        public boolean isLastElement(ELEMENT element) {
            return false;
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
        }

        public ServiceDescriptorHandler(I i) {
            super(i);
        }

        public ServiceDescriptorHandler(I i, SAXParser sAXParser) {
            super(i, sAXParser);
        }

        public ServiceDescriptorHandler(I i, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(i, (Handler) serviceDescriptorHandler);
        }

        public ServiceDescriptorHandler(I i, SAXParser sAXParser, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(i, sAXParser, serviceDescriptorHandler);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            ELEMENT valueOrNullOf = ELEMENT.valueOrNullOf(str2);
            if (valueOrNullOf != null) {
                startElement(valueOrNullOf, attributes);
            }
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            ELEMENT valueOrNullOf = ELEMENT.valueOrNullOf(str2);
            if (valueOrNullOf != null) {
                endElement(valueOrNullOf);
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            ELEMENT valueOrNullOf = ELEMENT.valueOrNullOf(str2);
            return valueOrNullOf != null && isLastElement(valueOrNullOf);
        }
    }

    protected static class StateVariableHandler extends ServiceDescriptorHandler<MutableStateVariable> {
        public static final ELEMENT EL = ELEMENT.stateVariable;

        public StateVariableHandler(MutableStateVariable mutableStateVariable, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableStateVariable, serviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(AllowedValueListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                ((MutableStateVariable) getInstance()).allowedValues = arrayList;
                new AllowedValueListHandler(arrayList, this);
            }
            if (element.equals(AllowedValueRangeHandler.EL)) {
                MutableAllowedValueRange mutableAllowedValueRange = new MutableAllowedValueRange();
                ((MutableStateVariable) getInstance()).allowedValueRange = mutableAllowedValueRange;
                new AllowedValueRangeHandler(mutableAllowedValueRange, this);
            }
        }

        public void endElement(ELEMENT element) throws SAXException {
            int i = AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()];
            if (i == 1) {
                ((MutableStateVariable) getInstance()).name = getCharacters();
            } else if (i == 5) {
                String characters = getCharacters();
                Builtin byDescriptorName = Builtin.getByDescriptorName(characters);
                ((MutableStateVariable) getInstance()).dataType = byDescriptorName != null ? byDescriptorName.getDatatype() : new CustomDatatype(characters);
            } else if (i == 6) {
                ((MutableStateVariable) getInstance()).defaultValue = getCharacters();
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class StateVariableListHandler extends ServiceDescriptorHandler<List<MutableStateVariable>> {
        public static final ELEMENT EL = ELEMENT.serviceStateTable;

        public StateVariableListHandler(List<MutableStateVariable> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(StateVariableHandler.EL)) {
                MutableStateVariable mutableStateVariable = new MutableStateVariable();
                String value = attributes.getValue(ATTRIBUTE.sendEvents.toString());
                mutableStateVariable.eventDetails = new StateVariableEventDetails(value != null && value.toUpperCase(Locale.ROOT).equals("YES"));
                ((List) getInstance()).add(mutableStateVariable);
                new StateVariableHandler(mutableStateVariable, this);
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    public <S extends Service> S describe(S s, String str) throws DescriptorBindingException, ValidationException {
        if (str == null || str.length() == 0) {
            throw new DescriptorBindingException("Null or empty descriptor");
        }
        try {
            log.fine("Reading service from XML descriptor");
            SAXParser sAXParser = new SAXParser();
            MutableService mutableService = new MutableService();
            hydrateBasic(mutableService, s);
            new RootHandler(mutableService, sAXParser);
            sAXParser.parse(new InputSource(new StringReader(str.trim())));
            return mutableService.build(s.getDevice());
        } catch (ValidationException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not parse service descriptor: ");
            sb.append(e2.toString());
            throw new DescriptorBindingException(sb.toString(), e2);
        }
    }
}
