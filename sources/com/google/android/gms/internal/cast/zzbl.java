package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerResult;
import com.google.android.gms.cast.games.GameManagerClient.Listener;
import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbl extends zzcg {
    private static final String NAMESPACE = zzcu.zzp("com.google.cast.games");
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("GameManagerChannel");
    /* access modifiers changed from: private */
    public final CastApi zzho;
    /* access modifiers changed from: private */
    public final GoogleApiClient zzok;
    private final Map<String, String> zztq = new ConcurrentHashMap();
    private final SharedPreferences zztr;
    private final String zzts;
    /* access modifiers changed from: private */
    public zzby zztt;
    private boolean zztu = false;
    private GameManagerState zztv;
    private GameManagerState zztw;
    private String zztx;
    private JSONObject zzty;
    private long zztz = 0;
    private Listener zzua;
    private final Clock zzub;
    /* access modifiers changed from: private */
    public String zzuc;

    public zzbl(GoogleApiClient googleApiClient, String str, CastApi castApi) throws IllegalArgumentException, IllegalStateException {
        super(NAMESPACE, "CastGameManagerChannel", null);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("castSessionId cannot be null.");
        } else if (googleApiClient == null || !googleApiClient.isConnected() || !googleApiClient.hasConnectedApi(Cast.API)) {
            throw new IllegalArgumentException("googleApiClient needs to be connected and contain the Cast.API API.");
        } else {
            this.zzub = DefaultClock.getInstance();
            this.zzts = str;
            this.zzho = castApi;
            this.zzok = googleApiClient;
            Context applicationContext = googleApiClient.getContext().getApplicationContext();
            this.zztr = applicationContext.getApplicationContext().getSharedPreferences(String.format(Locale.ROOT, "%s.%s", new Object[]{applicationContext.getPackageName(), "game_manager_channel_data"}), 0);
            this.zztw = null;
            zzca zzca = new zzca(0, 0, "", null, new ArrayList(), "", -1);
            this.zztv = zzca;
        }
    }

    public final synchronized PendingResult<GameManagerInstanceResult> zza(GameManagerClient gameManagerClient) throws IllegalArgumentException {
        return this.zzok.execute(new zzbm(this, gameManagerClient));
    }

    public final synchronized void dispose() throws IllegalStateException {
        if (!this.zztu) {
            this.zztv = null;
            this.zztw = null;
            this.zztx = null;
            this.zzty = null;
            this.zztu = true;
            try {
                this.zzho.removeMessageReceivedCallbacks(this.zzok, getNamespace());
            } catch (IOException e) {
                zzbe.w("Exception while detaching game manager channel.", e);
            }
        }
    }

    public final synchronized PendingResult<GameManagerResult> zza(String str, int i, JSONObject jSONObject) throws IllegalStateException {
        zzcw();
        return this.zzok.execute(new zzbo(this, i, str, jSONObject));
    }

    public final synchronized void sendGameMessage(String str, JSONObject jSONObject) throws IllegalStateException {
        zzcw();
        long j = this.zztz + 1;
        this.zztz = j;
        JSONObject zza = zza(j, str, 7, jSONObject);
        if (zza != null) {
            this.zzho.sendMessage(this.zzok, getNamespace(), zza.toString());
        }
    }

    public final synchronized PendingResult<GameManagerResult> sendGameRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        zzcw();
        return this.zzok.execute(new zzbp(this, str, jSONObject));
    }

    public final synchronized GameManagerState getCurrentState() throws IllegalStateException {
        zzcw();
        return this.zztv;
    }

    public final synchronized String getLastUsedPlayerId() throws IllegalStateException {
        zzcw();
        return this.zzuc;
    }

    private final synchronized String zzm(String str) throws IllegalStateException {
        if (str == null) {
            return null;
        }
        return (String) this.zztq.get(str);
    }

    public final synchronized void setListener(Listener listener) {
        this.zzua = listener;
    }

    public final void zzn(String str) {
        int i = 0;
        zzbe.d("message received: %s", str);
        try {
            zzbz zzh = zzbz.zzh(new JSONObject(str));
            if (zzh == null) {
                zzbe.w("Could not parse game manager message from string: %s", str);
            } else if ((isInitialized() || zzh.zzve != null) && !isDisposed()) {
                boolean z = zzh.zzus == 1;
                if (z && !TextUtils.isEmpty(zzh.zzvd)) {
                    this.zztq.put(zzh.zzvb, zzh.zzvd);
                    zzcx();
                }
                if (zzh.zzut == 0) {
                    zza(zzh);
                } else {
                    zzbe.w("Not updating from game message because the message contains error code: %d", Integer.valueOf(zzh.zzut));
                }
                int i2 = zzh.zzut;
                if (i2 != 0) {
                    if (i2 == 1) {
                        i = CastStatusCodes.INVALID_REQUEST;
                    } else if (i2 == 2) {
                        i = CastStatusCodes.NOT_ALLOWED;
                    } else if (i2 == 3) {
                        i = GameManagerClient.STATUS_INCORRECT_VERSION;
                    } else if (i2 != 4) {
                        zzdg zzdg = zzbe;
                        StringBuilder sb = new StringBuilder(53);
                        sb.append("Unknown GameManager protocol status code: ");
                        sb.append(i2);
                        zzdg.w(sb.toString(), new Object[0]);
                        i = 13;
                    } else {
                        i = GameManagerClient.STATUS_TOO_MANY_PLAYERS;
                    }
                }
                if (z) {
                    zzb(zzh.zzvc, i, zzh);
                }
                if (isInitialized() && i == 0) {
                    if (this.zzua != null) {
                        GameManagerState gameManagerState = this.zztw;
                        if (gameManagerState != null && !this.zztv.equals(gameManagerState)) {
                            this.zzua.onStateChanged(this.zztv, this.zztw);
                        }
                        JSONObject jSONObject = this.zzty;
                        if (jSONObject != null) {
                            String str2 = this.zztx;
                            if (str2 != null) {
                                this.zzua.onGameMessageReceived(str2, jSONObject);
                            }
                        }
                    }
                    this.zztw = null;
                    this.zztx = null;
                    this.zzty = null;
                }
            }
        } catch (JSONException e) {
            zzbe.w("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    public final synchronized boolean isDisposed() {
        return this.zztu;
    }

    private final synchronized boolean isInitialized() {
        return this.zztt != null;
    }

    public final void zza(long j, int i) {
        zzb(j, i, null);
    }

    private final synchronized void zzcw() throws IllegalStateException {
        if (!isInitialized()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel before it is initialized.");
        } else if (isDisposed()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel after it has been disposed.");
        }
    }

    /* access modifiers changed from: private */
    public final void zza(String str, int i, JSONObject jSONObject, zzdm zzdm) {
        long j = this.zztz + 1;
        this.zztz = j;
        JSONObject zza = zza(j, str, i, jSONObject);
        if (zza == null) {
            zzdm.zza(-1, CastStatusCodes.INVALID_REQUEST, null);
            zzbe.w("Not sending request because it was invalid.", new Object[0]);
            return;
        }
        zzdn zzdn = new zzdn(30000);
        zzdn.zza(j, zzdm);
        zza(zzdn);
        this.zzho.sendMessage(this.zzok, getNamespace(), zza.toString()).setResultCallback(new zzbq(this, j));
    }

    private final JSONObject zza(long j, String str, int i, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("requestId", j);
            jSONObject2.put("type", i);
            jSONObject2.put("extraMessageData", jSONObject);
            jSONObject2.put("playerId", str);
            jSONObject2.put("playerToken", zzm(str));
            return jSONObject2;
        } catch (JSONException e) {
            zzbe.w("JSONException when trying to create a message: %s", e.getMessage());
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x008a, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final synchronized void zza(com.google.android.gms.internal.cast.zzbz r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            int r0 = r10.zzus     // Catch:{ all -> 0x008b }
            r1 = 1
            if (r0 != r1) goto L_0x0007
            goto L_0x0008
        L_0x0007:
            r1 = 0
        L_0x0008:
            com.google.android.gms.cast.games.GameManagerState r0 = r9.zztv     // Catch:{ all -> 0x008b }
            r9.zztw = r0     // Catch:{ all -> 0x008b }
            if (r1 == 0) goto L_0x0016
            com.google.android.gms.internal.cast.zzby r0 = r10.zzve     // Catch:{ all -> 0x008b }
            if (r0 == 0) goto L_0x0016
            com.google.android.gms.internal.cast.zzby r0 = r10.zzve     // Catch:{ all -> 0x008b }
            r9.zztt = r0     // Catch:{ all -> 0x008b }
        L_0x0016:
            boolean r0 = r9.isInitialized()     // Catch:{ all -> 0x008b }
            if (r0 != 0) goto L_0x001e
            monitor-exit(r9)
            return
        L_0x001e:
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ all -> 0x008b }
            r6.<init>()     // Catch:{ all -> 0x008b }
            java.util.List<com.google.android.gms.internal.cast.zzcc> r0 = r10.zzuy     // Catch:{ all -> 0x008b }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ all -> 0x008b }
        L_0x0029:
            boolean r1 = r0.hasNext()     // Catch:{ all -> 0x008b }
            if (r1 == 0) goto L_0x0050
            java.lang.Object r1 = r0.next()     // Catch:{ all -> 0x008b }
            com.google.android.gms.internal.cast.zzcc r1 = (com.google.android.gms.internal.cast.zzcc) r1     // Catch:{ all -> 0x008b }
            java.lang.String r2 = r1.getPlayerId()     // Catch:{ all -> 0x008b }
            com.google.android.gms.internal.cast.zzcb r3 = new com.google.android.gms.internal.cast.zzcb     // Catch:{ all -> 0x008b }
            int r4 = r1.getPlayerState()     // Catch:{ all -> 0x008b }
            org.json.JSONObject r1 = r1.getPlayerData()     // Catch:{ all -> 0x008b }
            java.util.Map<java.lang.String, java.lang.String> r5 = r9.zztq     // Catch:{ all -> 0x008b }
            boolean r5 = r5.containsKey(r2)     // Catch:{ all -> 0x008b }
            r3.<init>(r2, r4, r1, r5)     // Catch:{ all -> 0x008b }
            r6.add(r3)     // Catch:{ all -> 0x008b }
            goto L_0x0029
        L_0x0050:
            com.google.android.gms.internal.cast.zzca r0 = new com.google.android.gms.internal.cast.zzca     // Catch:{ all -> 0x008b }
            int r2 = r10.zzux     // Catch:{ all -> 0x008b }
            int r3 = r10.zzuw     // Catch:{ all -> 0x008b }
            java.lang.String r4 = r10.zzva     // Catch:{ all -> 0x008b }
            org.json.JSONObject r5 = r10.zzuz     // Catch:{ all -> 0x008b }
            com.google.android.gms.internal.cast.zzby r1 = r9.zztt     // Catch:{ all -> 0x008b }
            java.lang.String r7 = r1.zzda()     // Catch:{ all -> 0x008b }
            com.google.android.gms.internal.cast.zzby r1 = r9.zztt     // Catch:{ all -> 0x008b }
            int r8 = r1.getMaxPlayers()     // Catch:{ all -> 0x008b }
            r1 = r0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ all -> 0x008b }
            r9.zztv = r0     // Catch:{ all -> 0x008b }
            com.google.android.gms.cast.games.GameManagerState r0 = r9.zztv     // Catch:{ all -> 0x008b }
            java.lang.String r1 = r10.zzvb     // Catch:{ all -> 0x008b }
            com.google.android.gms.cast.games.PlayerInfo r0 = r0.getPlayer(r1)     // Catch:{ all -> 0x008b }
            if (r0 == 0) goto L_0x0089
            boolean r0 = r0.isControllable()     // Catch:{ all -> 0x008b }
            if (r0 == 0) goto L_0x0089
            int r0 = r10.zzus     // Catch:{ all -> 0x008b }
            r1 = 2
            if (r0 != r1) goto L_0x0089
            java.lang.String r0 = r10.zzvb     // Catch:{ all -> 0x008b }
            r9.zztx = r0     // Catch:{ all -> 0x008b }
            org.json.JSONObject r10 = r10.zzuv     // Catch:{ all -> 0x008b }
            r9.zzty = r10     // Catch:{ all -> 0x008b }
        L_0x0089:
            monitor-exit(r9)
            return
        L_0x008b:
            r10 = move-exception
            monitor-exit(r9)
            goto L_0x008f
        L_0x008e:
            throw r10
        L_0x008f:
            goto L_0x008e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzbl.zza(com.google.android.gms.internal.cast.zzbz):void");
    }

    private final void zzb(long j, int i, Object obj) {
        List zzdd = zzdd();
        synchronized (zzdd) {
            Iterator it = zzdd.iterator();
            while (it.hasNext()) {
                if (((zzdn) it.next()).zzc(j, i, obj)) {
                    it.remove();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public final synchronized void zzcx() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("castSessionId", this.zzts);
            jSONObject.put("playerTokenMap", new JSONObject(this.zztq));
            this.zztr.edit().putString("save_data", jSONObject.toString()).commit();
        } catch (JSONException e) {
            zzbe.w("Error while saving data: %s", e.getMessage());
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0046, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void zzcy() {
        /*
            r5 = this;
            monitor-enter(r5)
            android.content.SharedPreferences r0 = r5.zztr     // Catch:{ all -> 0x005b }
            java.lang.String r1 = "save_data"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)     // Catch:{ all -> 0x005b }
            if (r0 != 0) goto L_0x000e
            monitor-exit(r5)
            return
        L_0x000e:
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ JSONException -> 0x0047 }
            r1.<init>(r0)     // Catch:{ JSONException -> 0x0047 }
            java.lang.String r0 = "castSessionId"
            java.lang.String r0 = r1.getString(r0)     // Catch:{ JSONException -> 0x0047 }
            java.lang.String r2 = r5.zzts     // Catch:{ JSONException -> 0x0047 }
            boolean r0 = r2.equals(r0)     // Catch:{ JSONException -> 0x0047 }
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = "playerTokenMap"
            org.json.JSONObject r0 = r1.getJSONObject(r0)     // Catch:{ JSONException -> 0x0047 }
            java.util.Iterator r1 = r0.keys()     // Catch:{ JSONException -> 0x0047 }
        L_0x002b:
            boolean r2 = r1.hasNext()     // Catch:{ JSONException -> 0x0047 }
            if (r2 == 0) goto L_0x0041
            java.lang.Object r2 = r1.next()     // Catch:{ JSONException -> 0x0047 }
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ JSONException -> 0x0047 }
            java.util.Map<java.lang.String, java.lang.String> r3 = r5.zztq     // Catch:{ JSONException -> 0x0047 }
            java.lang.String r4 = r0.getString(r2)     // Catch:{ JSONException -> 0x0047 }
            r3.put(r2, r4)     // Catch:{ JSONException -> 0x0047 }
            goto L_0x002b
        L_0x0041:
            r0 = 0
            r5.zztz = r0     // Catch:{ JSONException -> 0x0047 }
        L_0x0045:
            monitor-exit(r5)
            return
        L_0x0047:
            r0 = move-exception
            com.google.android.gms.internal.cast.zzdg r1 = zzbe     // Catch:{ all -> 0x005b }
            java.lang.String r2 = "Error while loading data: %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x005b }
            r4 = 0
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x005b }
            r3[r4] = r0     // Catch:{ all -> 0x005b }
            r1.w(r2, r3)     // Catch:{ all -> 0x005b }
            monitor-exit(r5)
            return
        L_0x005b:
            r0 = move-exception
            monitor-exit(r5)
            goto L_0x005f
        L_0x005e:
            throw r0
        L_0x005f:
            goto L_0x005e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzbl.zzcy():void");
    }
}
