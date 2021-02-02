package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializeWriter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.IOException;
import java.lang.reflect.Type;

class AVObjectSerializer implements ObjectSerializer {
    public static final AVObjectSerializer instance = new AVObjectSerializer();

    AVObjectSerializer() {
    }

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter writer = jSONSerializer.getWriter();
        AVObject aVObject = (AVObject) obj;
        writer.write(123);
        writer.writeFieldValue(' ', "@type", aVObject.getClass().getName());
        writer.writeFieldValue(',', "objectId", aVObject.getObjectId());
        writer.writeFieldValue(',', AVObject.UPDATED_AT, AVUtils.getAVObjectUpdatedAt(aVObject));
        writer.writeFieldValue(',', AVObject.CREATED_AT, AVUtils.getAVObjectCreatedAt(aVObject));
        String aVObjectClassName = AVUtils.getAVObjectClassName(aVObject.getClass());
        if (aVObjectClassName == null) {
            aVObjectClassName = aVObject.getClassName();
        }
        writer.writeFieldValue(',', AVUtils.classNameTag, aVObjectClassName);
        writer.write(44);
        if (aVObject instanceof AVStatus) {
            AVStatus aVStatus = (AVStatus) aVObject;
            writer.writeFieldName("dataMap");
            writer.write(JSON.toJSONString((Object) aVStatus.getData(), (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect));
            writer.write(44);
            writer.writeFieldName("inboxType");
            writer.write(aVStatus.getInboxType());
            writer.write(44);
            writer.writeFieldName("messageId");
            writer.write(Long.toString(aVStatus.getMessageId()));
            if (aVStatus.getSource() != null) {
                writer.write(44);
                writer.writeFieldName("source");
                writer.write(JSON.toJSONString((Object) aVStatus.getSource(), (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect));
            }
        } else {
            writer.writeFieldName("serverData");
            writer.write(JSON.toJSONString((Object) aVObject.serverData, (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect));
            if (!aVObject.operationQueue.isEmpty()) {
                writer.write(44);
                writer.writeFieldName("operationQueue");
                writer.write(JSON.toJSONString((Object) aVObject.operationQueue, (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect));
            }
        }
        writer.write((int) AVException.INVALID_EMAIL_ADDRESS);
    }
}
