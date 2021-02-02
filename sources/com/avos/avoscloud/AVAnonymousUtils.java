package com.avos.avoscloud;

import java.util.UUID;

public class AVAnonymousUtils {
    private static String anonymousAuthData() {
        return String.format("{\"authData\": {\"anonymous\" : {\"id\": \"%s\"}}}", new Object[]{UUID.randomUUID().toString().toLowerCase()});
    }

    public static boolean isLinked(AVUser aVUser) {
        return aVUser == AVUser.getCurrentUser() && aVUser.isAuthenticated() && aVUser.isAnonymous();
    }

    public static void logIn(final LogInCallback<AVUser> logInCallback) {
        String anonymousAuthData = anonymousAuthData();
        PaasClient.storageInstance().postObject(AVUser.AVUSER_ENDPOINT, anonymousAuthData, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                AVUser newAVUser = AVUser.newAVUser();
                AVUtils.copyPropertiesFromJsonStringToAVObject(str, newAVUser);
                newAVUser.setAnonymous(true);
                AVUser.changeCurrentUser(newAVUser, true);
                LogInCallback logInCallback = logInCallback;
                if (logInCallback != null) {
                    logInCallback.internalDone(newAVUser, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                LogInCallback logInCallback = logInCallback;
                if (logInCallback != null) {
                    logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        });
    }
}
