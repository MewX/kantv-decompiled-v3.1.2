package org.jsoup.select;

import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;

public class Selector {
    private final Evaluator evaluator;
    private final Element root;

    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    private Selector(String str, Element element) {
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        Validate.notNull(element);
        this.evaluator = QueryParser.parse(trim);
        this.root = element;
    }

    private Selector(Evaluator evaluator2, Element element) {
        Validate.notNull(evaluator2);
        Validate.notNull(element);
        this.evaluator = evaluator2;
        this.root = element;
    }

    public static Elements select(String str, Element element) {
        return new Selector(str, element).select();
    }

    public static Elements select(Evaluator evaluator2, Element element) {
        return new Selector(evaluator2, element).select();
    }

    public static Elements select(String str, Iterable<Element> iterable) {
        Validate.notEmpty(str);
        Validate.notNull(iterable);
        Evaluator parse = QueryParser.parse(str);
        ArrayList arrayList = new ArrayList();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (Element select : iterable) {
            Iterator it = select(parse, select).iterator();
            while (it.hasNext()) {
                Element element = (Element) it.next();
                if (!identityHashMap.containsKey(element)) {
                    arrayList.add(element);
                    identityHashMap.put(element, Boolean.TRUE);
                }
            }
        }
        return new Elements((List<Element>) arrayList);
    }

    private Elements select() {
        return Collector.collect(this.evaluator, this.root);
    }

    static Elements filterOut(Collection<Element> collection, Collection<Element> collection2) {
        Elements elements = new Elements();
        for (Element element : collection) {
            boolean z = false;
            Iterator it = collection2.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (element.equals((Element) it.next())) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z) {
                elements.add(element);
            }
        }
        return elements;
    }
}
