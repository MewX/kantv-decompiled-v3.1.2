package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaControllerCompat.Callback;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo.Scope;
import androidx.appcompat.app.AppCompatDialog;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouter.RouteGroup;
import androidx.mediarouter.media.MediaRouter.RouteInfo;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import master.flame.danmaku.danmaku.parser.IDataSource;

@RestrictTo({Scope.LIBRARY_GROUP})
public class MediaRouteCastDialog extends AppCompatDialog {
    static final int CONNECTION_TIMEOUT_MILLIS = ((int) TimeUnit.SECONDS.toMillis(30));
    static final int MSG_UPDATE_ROUTES = 1;
    static final String TAG = "MediaRouteCastDialog";
    private static final long UPDATE_ROUTES_DELAY_MS = 300;
    private RecyclerAdapter mAdapter;
    int mArtIconBackgroundColor;
    Bitmap mArtIconBitmap;
    boolean mArtIconIsLoaded;
    Bitmap mArtIconLoadedBitmap;
    Uri mArtIconUri;
    private ImageView mArtView;
    private boolean mAttachedToWindow;
    private final MediaRouterCallback mCallback;
    private ImageButton mCloseButton;
    Context mContext;
    MediaControllerCallback mControllerCallback;
    private boolean mCreated;
    MediaDescriptionCompat mDescription;
    FetchArtTask mFetchArtTask;
    private final Handler mHandler;
    private long mLastUpdateTime;
    MediaControllerCompat mMediaController;
    private RelativeLayout mMetadataLayout;
    private RecyclerView mRecyclerView;
    final RouteInfo mRoute;
    final MediaRouter mRouter;
    final List<RouteInfo> mRoutes;
    private MediaRouteSelector mSelector;
    private Button mStopCastingButton;
    private TextView mSubtitleView;
    private String mTitlePlaceholder;
    private TextView mTitleView;
    VolumeChangeListener mVolumeChangeListener;
    int mVolumeSliderColor;

    private class FetchArtTask extends AsyncTask<Void, Void, Bitmap> {
        private int mBackgroundColor;
        private final Bitmap mIconBitmap;
        private final Uri mIconUri;

        FetchArtTask() {
            Uri uri = null;
            Bitmap iconBitmap = MediaRouteCastDialog.this.mDescription == null ? null : MediaRouteCastDialog.this.mDescription.getIconBitmap();
            if (MediaRouteCastDialog.isBitmapRecycled(iconBitmap)) {
                Log.w(MediaRouteCastDialog.TAG, "Can't fetch the given art bitmap because it's already recycled.");
                iconBitmap = null;
            }
            this.mIconBitmap = iconBitmap;
            if (MediaRouteCastDialog.this.mDescription != null) {
                uri = MediaRouteCastDialog.this.mDescription.getIconUri();
            }
            this.mIconUri = uri;
        }

        public Bitmap getIconBitmap() {
            return this.mIconBitmap;
        }

        public Uri getIconUri() {
            return this.mIconUri;
        }

        /* access modifiers changed from: protected */
        public void onPreExecute() {
            MediaRouteCastDialog.this.clearLoadedBitmap();
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:22:0x0049 */
        /* JADX WARNING: Removed duplicated region for block: B:25:0x0054 A[Catch:{ IOException -> 0x00a5 }] */
        /* JADX WARNING: Removed duplicated region for block: B:58:0x00c2 A[SYNTHETIC, Splitter:B:58:0x00c2] */
        /* JADX WARNING: Removed duplicated region for block: B:62:0x00c9 A[SYNTHETIC, Splitter:B:62:0x00c9] */
        /* JADX WARNING: Removed duplicated region for block: B:70:0x00d4  */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x00e9 A[ADDED_TO_REGION] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.graphics.Bitmap doInBackground(java.lang.Void... r10) {
            /*
                r9 = this;
                java.lang.String r10 = "Unable to open: "
                android.graphics.Bitmap r0 = r9.mIconBitmap
                r1 = 0
                r2 = 1
                java.lang.String r3 = "MediaRouteCastDialog"
                r4 = 0
                if (r0 == 0) goto L_0x000e
                r10 = r0
                goto L_0x00ce
            L_0x000e:
                android.net.Uri r0 = r9.mIconUri
                if (r0 == 0) goto L_0x00cd
                java.io.InputStream r0 = r9.openInputStreamByScheme(r0)     // Catch:{ IOException -> 0x00aa, all -> 0x00a7 }
                if (r0 != 0) goto L_0x0032
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00a5 }
                r5.<init>()     // Catch:{ IOException -> 0x00a5 }
                r5.append(r10)     // Catch:{ IOException -> 0x00a5 }
                android.net.Uri r6 = r9.mIconUri     // Catch:{ IOException -> 0x00a5 }
                r5.append(r6)     // Catch:{ IOException -> 0x00a5 }
                java.lang.String r5 = r5.toString()     // Catch:{ IOException -> 0x00a5 }
                android.util.Log.w(r3, r5)     // Catch:{ IOException -> 0x00a5 }
                if (r0 == 0) goto L_0x0031
                r0.close()     // Catch:{ IOException -> 0x0031 }
            L_0x0031:
                return r4
            L_0x0032:
                android.graphics.BitmapFactory$Options r5 = new android.graphics.BitmapFactory$Options     // Catch:{ IOException -> 0x00a5 }
                r5.<init>()     // Catch:{ IOException -> 0x00a5 }
                r5.inJustDecodeBounds = r2     // Catch:{ IOException -> 0x00a5 }
                android.graphics.BitmapFactory.decodeStream(r0, r4, r5)     // Catch:{ IOException -> 0x00a5 }
                int r6 = r5.outWidth     // Catch:{ IOException -> 0x00a5 }
                if (r6 == 0) goto L_0x009f
                int r6 = r5.outHeight     // Catch:{ IOException -> 0x00a5 }
                if (r6 != 0) goto L_0x0045
                goto L_0x009f
            L_0x0045:
                r0.reset()     // Catch:{ IOException -> 0x0049 }
                goto L_0x006e
            L_0x0049:
                r0.close()     // Catch:{ IOException -> 0x00a5 }
                android.net.Uri r6 = r9.mIconUri     // Catch:{ IOException -> 0x00a5 }
                java.io.InputStream r0 = r9.openInputStreamByScheme(r6)     // Catch:{ IOException -> 0x00a5 }
                if (r0 != 0) goto L_0x006e
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00a5 }
                r5.<init>()     // Catch:{ IOException -> 0x00a5 }
                r5.append(r10)     // Catch:{ IOException -> 0x00a5 }
                android.net.Uri r6 = r9.mIconUri     // Catch:{ IOException -> 0x00a5 }
                r5.append(r6)     // Catch:{ IOException -> 0x00a5 }
                java.lang.String r5 = r5.toString()     // Catch:{ IOException -> 0x00a5 }
                android.util.Log.w(r3, r5)     // Catch:{ IOException -> 0x00a5 }
                if (r0 == 0) goto L_0x006d
                r0.close()     // Catch:{ IOException -> 0x006d }
            L_0x006d:
                return r4
            L_0x006e:
                r5.inJustDecodeBounds = r1     // Catch:{ IOException -> 0x00a5 }
                androidx.mediarouter.app.MediaRouteCastDialog r6 = androidx.mediarouter.app.MediaRouteCastDialog.this     // Catch:{ IOException -> 0x00a5 }
                int r7 = r5.outWidth     // Catch:{ IOException -> 0x00a5 }
                int r8 = r5.outHeight     // Catch:{ IOException -> 0x00a5 }
                int r6 = r6.getDesiredArtHeight(r7, r8)     // Catch:{ IOException -> 0x00a5 }
                int r7 = r5.outHeight     // Catch:{ IOException -> 0x00a5 }
                int r7 = r7 / r6
                int r6 = java.lang.Integer.highestOneBit(r7)     // Catch:{ IOException -> 0x00a5 }
                int r6 = java.lang.Math.max(r2, r6)     // Catch:{ IOException -> 0x00a5 }
                r5.inSampleSize = r6     // Catch:{ IOException -> 0x00a5 }
                boolean r6 = r9.isCancelled()     // Catch:{ IOException -> 0x00a5 }
                if (r6 == 0) goto L_0x0093
                if (r0 == 0) goto L_0x0092
                r0.close()     // Catch:{ IOException -> 0x0092 }
            L_0x0092:
                return r4
            L_0x0093:
                android.graphics.Bitmap r10 = android.graphics.BitmapFactory.decodeStream(r0, r4, r5)     // Catch:{ IOException -> 0x00a5 }
                if (r0 == 0) goto L_0x00ce
                r0.close()     // Catch:{ IOException -> 0x009d }
                goto L_0x00ce
            L_0x009d:
                goto L_0x00ce
            L_0x009f:
                if (r0 == 0) goto L_0x00a4
                r0.close()     // Catch:{ IOException -> 0x00a4 }
            L_0x00a4:
                return r4
            L_0x00a5:
                r5 = move-exception
                goto L_0x00ac
            L_0x00a7:
                r10 = move-exception
                r0 = r4
                goto L_0x00c7
            L_0x00aa:
                r5 = move-exception
                r0 = r4
            L_0x00ac:
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c6 }
                r6.<init>()     // Catch:{ all -> 0x00c6 }
                r6.append(r10)     // Catch:{ all -> 0x00c6 }
                android.net.Uri r10 = r9.mIconUri     // Catch:{ all -> 0x00c6 }
                r6.append(r10)     // Catch:{ all -> 0x00c6 }
                java.lang.String r10 = r6.toString()     // Catch:{ all -> 0x00c6 }
                android.util.Log.w(r3, r10, r5)     // Catch:{ all -> 0x00c6 }
                if (r0 == 0) goto L_0x00cd
                r0.close()     // Catch:{ IOException -> 0x00cd }
                goto L_0x00cd
            L_0x00c6:
                r10 = move-exception
            L_0x00c7:
                if (r0 == 0) goto L_0x00cc
                r0.close()     // Catch:{ IOException -> 0x00cc }
            L_0x00cc:
                throw r10
            L_0x00cd:
                r10 = r4
            L_0x00ce:
                boolean r0 = androidx.mediarouter.app.MediaRouteCastDialog.isBitmapRecycled(r10)
                if (r0 == 0) goto L_0x00e9
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Can't use recycled bitmap: "
                r0.append(r1)
                r0.append(r10)
                java.lang.String r10 = r0.toString()
                android.util.Log.w(r3, r10)
                return r4
            L_0x00e9:
                if (r10 == 0) goto L_0x011d
                int r0 = r10.getWidth()
                int r3 = r10.getHeight()
                if (r0 >= r3) goto L_0x011d
                androidx.palette.graphics.Palette$Builder r0 = new androidx.palette.graphics.Palette$Builder
                r0.<init>(r10)
                androidx.palette.graphics.Palette$Builder r0 = r0.maximumColorCount(r2)
                androidx.palette.graphics.Palette r0 = r0.generate()
                java.util.List r2 = r0.getSwatches()
                boolean r2 = r2.isEmpty()
                if (r2 == 0) goto L_0x010d
                goto L_0x011b
            L_0x010d:
                java.util.List r0 = r0.getSwatches()
                java.lang.Object r0 = r0.get(r1)
                androidx.palette.graphics.Palette$Swatch r0 = (androidx.palette.graphics.Palette.Swatch) r0
                int r1 = r0.getRgb()
            L_0x011b:
                r9.mBackgroundColor = r1
            L_0x011d:
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteCastDialog.FetchArtTask.doInBackground(java.lang.Void[]):android.graphics.Bitmap");
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Bitmap bitmap) {
            MediaRouteCastDialog mediaRouteCastDialog = MediaRouteCastDialog.this;
            mediaRouteCastDialog.mFetchArtTask = null;
            if (!ObjectsCompat.equals(mediaRouteCastDialog.mArtIconBitmap, this.mIconBitmap) || !ObjectsCompat.equals(MediaRouteCastDialog.this.mArtIconUri, this.mIconUri)) {
                MediaRouteCastDialog mediaRouteCastDialog2 = MediaRouteCastDialog.this;
                mediaRouteCastDialog2.mArtIconBitmap = this.mIconBitmap;
                mediaRouteCastDialog2.mArtIconLoadedBitmap = bitmap;
                mediaRouteCastDialog2.mArtIconUri = this.mIconUri;
                mediaRouteCastDialog2.mArtIconBackgroundColor = this.mBackgroundColor;
                mediaRouteCastDialog2.mArtIconIsLoaded = true;
                mediaRouteCastDialog2.update();
            }
        }

        private InputStream openInputStreamByScheme(Uri uri) throws IOException {
            InputStream inputStream;
            String lowerCase = uri.getScheme().toLowerCase();
            if ("android.resource".equals(lowerCase) || "content".equals(lowerCase) || IDataSource.SCHEME_FILE_TAG.equals(lowerCase)) {
                inputStream = MediaRouteCastDialog.this.mContext.getContentResolver().openInputStream(uri);
            } else {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                openConnection.setConnectTimeout(MediaRouteCastDialog.CONNECTION_TIMEOUT_MILLIS);
                openConnection.setReadTimeout(MediaRouteCastDialog.CONNECTION_TIMEOUT_MILLIS);
                inputStream = openConnection.getInputStream();
            }
            if (inputStream == null) {
                return null;
            }
            return new BufferedInputStream(inputStream);
        }
    }

    private final class MediaControllerCallback extends Callback {
        MediaControllerCallback() {
        }

        public void onSessionDestroyed() {
            if (MediaRouteCastDialog.this.mMediaController != null) {
                MediaRouteCastDialog.this.mMediaController.unregisterCallback(MediaRouteCastDialog.this.mControllerCallback);
                MediaRouteCastDialog.this.mMediaController = null;
            }
        }

        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            MediaRouteCastDialog.this.mDescription = mediaMetadataCompat == null ? null : mediaMetadataCompat.getDescription();
            MediaRouteCastDialog.this.updateArtIconIfNeeded();
            MediaRouteCastDialog.this.update();
        }
    }

    private final class MediaRouterCallback extends MediaRouter.Callback {
        MediaRouterCallback() {
        }

        public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteCastDialog.this.refreshRoutes();
        }

        public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteCastDialog.this.refreshRoutes();
        }

        public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteCastDialog.this.update();
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteCastDialog.this.update();
        }

        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteCastDialog.this.refreshRoutes();
            MediaRouteCastDialog.this.update();
        }
    }

    private final class RecyclerAdapter extends Adapter<ViewHolder> {
        private static final int ITEM_TYPE_GROUP = 4;
        private static final int ITEM_TYPE_GROUP_VOLUME = 1;
        private static final int ITEM_TYPE_HEADER = 2;
        private static final int ITEM_TYPE_ROUTE = 3;
        private static final String TAG = "RecyclerAdapter";
        private final ArrayList<RouteInfo> mAvailableGroups = new ArrayList<>();
        private final ArrayList<RouteInfo> mAvailableRoutes = new ArrayList<>();
        private final Drawable mDefaultIcon;
        private final LayoutInflater mInflater;
        private final ArrayList<Item> mItems = new ArrayList<>();
        private final Drawable mSpeakerGroupIcon;
        private final Drawable mSpeakerIcon;
        private final Drawable mTvIcon;

        private class GroupViewHolder extends ViewHolder {
            ImageView mImageView;
            TextView mTextView;

            GroupViewHolder(View view) {
                super(view);
                this.mImageView = (ImageView) view.findViewById(R.id.mr_cast_group_icon);
                this.mTextView = (TextView) view.findViewById(R.id.mr_cast_group_name);
            }

            public void bindGroupViewHolder(Item item) {
                RouteInfo routeInfo = (RouteInfo) item.getData();
                this.mImageView.setImageDrawable(RecyclerAdapter.this.getIconDrawable(routeInfo));
                this.mTextView.setText(routeInfo.getName());
            }
        }

        private class GroupVolumeViewHolder extends ViewHolder {
            MediaRouteVolumeSlider mGroupVolumeSlider;
            TextView mTextView;

            GroupVolumeViewHolder(View view) {
                super(view);
                this.mTextView = (TextView) view.findViewById(R.id.mr_group_volume_route_name);
                this.mGroupVolumeSlider = (MediaRouteVolumeSlider) view.findViewById(R.id.mr_group_volume_slider);
            }

            public void bindGroupVolumeView(Item item) {
                RouteInfo routeInfo = (RouteInfo) item.getData();
                this.mTextView.setText(routeInfo.getName().toUpperCase());
                this.mGroupVolumeSlider.setColor(MediaRouteCastDialog.this.mVolumeSliderColor);
                this.mGroupVolumeSlider.setTag(routeInfo);
                this.mGroupVolumeSlider.setProgress(MediaRouteCastDialog.this.mRoute.getVolume());
                this.mGroupVolumeSlider.setOnSeekBarChangeListener(MediaRouteCastDialog.this.mVolumeChangeListener);
            }
        }

        private class HeaderViewHolder extends ViewHolder {
            TextView mTextView;

            HeaderViewHolder(View view) {
                super(view);
                this.mTextView = (TextView) view.findViewById(R.id.mr_dialog_header_name);
            }

            public void bindHeaderViewHolder(Item item) {
                this.mTextView.setText(item.getData().toString().toUpperCase());
            }
        }

        private class Item {
            private final Object mData;
            private final int mType;

            Item(Object obj, int i) {
                this.mData = obj;
                this.mType = i;
            }

            public Object getData() {
                return this.mData;
            }

            public int getType() {
                return this.mType;
            }
        }

        private class RouteViewHolder extends ViewHolder {
            CheckBox mCheckBox;
            ImageView mImageView;
            TextView mTextView;
            MediaRouteVolumeSlider mVolumeSlider;

            RouteViewHolder(View view) {
                super(view);
                this.mImageView = (ImageView) view.findViewById(R.id.mr_cast_route_icon);
                this.mTextView = (TextView) view.findViewById(R.id.mr_cast_route_name);
                this.mCheckBox = (CheckBox) view.findViewById(R.id.mr_cast_checkbox);
                this.mVolumeSlider = (MediaRouteVolumeSlider) view.findViewById(R.id.mr_cast_volume_slider);
            }

            public void bindRouteViewHolder(Item item) {
                RouteInfo routeInfo = (RouteInfo) item.getData();
                this.mImageView.setImageDrawable(RecyclerAdapter.this.getIconDrawable(routeInfo));
                this.mTextView.setText(routeInfo.getName());
                this.mCheckBox.setChecked(RecyclerAdapter.this.isSelectedRoute(routeInfo));
                this.mVolumeSlider.setColor(MediaRouteCastDialog.this.mVolumeSliderColor);
                this.mVolumeSlider.setTag(routeInfo);
                this.mVolumeSlider.setProgress(routeInfo.getVolume());
                this.mVolumeSlider.setOnSeekBarChangeListener(MediaRouteCastDialog.this.mVolumeChangeListener);
            }
        }

        RecyclerAdapter() {
            this.mInflater = LayoutInflater.from(MediaRouteCastDialog.this.mContext);
            this.mDefaultIcon = MediaRouterThemeHelper.getDefaultDrawableIcon(MediaRouteCastDialog.this.mContext);
            this.mTvIcon = MediaRouterThemeHelper.getTvDrawableIcon(MediaRouteCastDialog.this.mContext);
            this.mSpeakerIcon = MediaRouterThemeHelper.getSpeakerDrawableIcon(MediaRouteCastDialog.this.mContext);
            this.mSpeakerGroupIcon = MediaRouterThemeHelper.getSpeakerGropuIcon(MediaRouteCastDialog.this.mContext);
            setItems();
        }

        /* access modifiers changed from: 0000 */
        public boolean isSelectedRoute(RouteInfo routeInfo) {
            if (routeInfo.isSelected()) {
                return true;
            }
            if (MediaRouteCastDialog.this.mRoute instanceof RouteGroup) {
                for (RouteInfo id : ((RouteGroup) MediaRouteCastDialog.this.mRoute).getRoutes()) {
                    if (id.getId().equals(routeInfo.getId())) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public void setItems() {
            this.mItems.clear();
            if (MediaRouteCastDialog.this.mRoute instanceof RouteGroup) {
                this.mItems.add(new Item(MediaRouteCastDialog.this.mRoute, 1));
                for (RouteInfo item : ((RouteGroup) MediaRouteCastDialog.this.mRoute).getRoutes()) {
                    this.mItems.add(new Item(item, 3));
                }
            } else {
                this.mItems.add(new Item(MediaRouteCastDialog.this.mRoute, 3));
            }
            this.mAvailableRoutes.clear();
            this.mAvailableGroups.clear();
            for (RouteInfo routeInfo : MediaRouteCastDialog.this.mRoutes) {
                if (!isSelectedRoute(routeInfo)) {
                    if (routeInfo instanceof RouteGroup) {
                        this.mAvailableGroups.add(routeInfo);
                    } else {
                        this.mAvailableRoutes.add(routeInfo);
                    }
                }
            }
            if (this.mAvailableRoutes.size() > 0) {
                this.mItems.add(new Item(MediaRouteCastDialog.this.mContext.getString(R.string.mr_dialog_device_header), 2));
                Iterator it = this.mAvailableRoutes.iterator();
                while (it.hasNext()) {
                    this.mItems.add(new Item((RouteInfo) it.next(), 3));
                }
            }
            if (this.mAvailableGroups.size() > 0) {
                this.mItems.add(new Item(MediaRouteCastDialog.this.mContext.getString(R.string.mr_dialog_route_header), 2));
                Iterator it2 = this.mAvailableGroups.iterator();
                while (it2.hasNext()) {
                    this.mItems.add(new Item((RouteInfo) it2.next(), 4));
                }
            }
            notifyDataSetChanged();
        }

        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                return new GroupVolumeViewHolder(this.mInflater.inflate(R.layout.mr_cast_group_volume_item, viewGroup, false));
            }
            if (i == 2) {
                return new HeaderViewHolder(this.mInflater.inflate(R.layout.mr_dialog_header_item, viewGroup, false));
            }
            if (i == 3) {
                return new RouteViewHolder(this.mInflater.inflate(R.layout.mr_cast_route_item, viewGroup, false));
            }
            if (i == 4) {
                return new GroupViewHolder(this.mInflater.inflate(R.layout.mr_cast_group_item, viewGroup, false));
            }
            Log.w(TAG, "Cannot create ViewHolder because of wrong view type");
            return null;
        }

        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            int itemViewType = getItemViewType(i);
            Item item = getItem(i);
            if (itemViewType == 1) {
                ((GroupVolumeViewHolder) viewHolder).bindGroupVolumeView(item);
            } else if (itemViewType == 2) {
                ((HeaderViewHolder) viewHolder).bindHeaderViewHolder(item);
            } else if (itemViewType == 3) {
                ((RouteViewHolder) viewHolder).bindRouteViewHolder(item);
            } else if (itemViewType != 4) {
                Log.w(TAG, "Cannot bind item to ViewHolder because of wrong view type");
            } else {
                ((GroupViewHolder) viewHolder).bindGroupViewHolder(item);
            }
        }

        public int getItemCount() {
            return this.mItems.size();
        }

        /* access modifiers changed from: 0000 */
        public Drawable getIconDrawable(RouteInfo routeInfo) {
            Uri iconUri = routeInfo.getIconUri();
            if (iconUri != null) {
                try {
                    Drawable createFromStream = Drawable.createFromStream(MediaRouteCastDialog.this.mContext.getContentResolver().openInputStream(iconUri), null);
                    if (createFromStream != null) {
                        return createFromStream;
                    }
                } catch (IOException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to load ");
                    sb.append(iconUri);
                    Log.w(TAG, sb.toString(), e);
                }
            }
            return getDefaultIconDrawable(routeInfo);
        }

        private Drawable getDefaultIconDrawable(RouteInfo routeInfo) {
            int deviceType = routeInfo.getDeviceType();
            if (deviceType == 1) {
                return this.mTvIcon;
            }
            if (deviceType == 2) {
                return this.mSpeakerIcon;
            }
            if (routeInfo instanceof RouteGroup) {
                return this.mSpeakerGroupIcon;
            }
            return this.mDefaultIcon;
        }

        public int getItemViewType(int i) {
            return ((Item) this.mItems.get(i)).getType();
        }

        public Item getItem(int i) {
            return (Item) this.mItems.get(i);
        }
    }

    private class VolumeChangeListener implements OnSeekBarChangeListener {
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }

        VolumeChangeListener() {
        }
    }

    public MediaRouteCastDialog(Context context) {
        this(context, 0);
    }

    public MediaRouteCastDialog(Context context, int i) {
        Context createThemedDialogContext = MediaRouterThemeHelper.createThemedDialogContext(context, i, false);
        super(createThemedDialogContext, MediaRouterThemeHelper.createThemedDialogStyle(createThemedDialogContext));
        this.mSelector = MediaRouteSelector.EMPTY;
        this.mRoutes = new ArrayList();
        this.mHandler = new Handler() {
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    MediaRouteCastDialog.this.updateRoutes((List) message.obj);
                }
            }
        };
        this.mContext = getContext();
        this.mRouter = MediaRouter.getInstance(this.mContext);
        this.mCallback = new MediaRouterCallback();
        this.mRoute = this.mRouter.getSelectedRoute();
        this.mControllerCallback = new MediaControllerCallback();
        setMediaSession(this.mRouter.getMediaSessionToken());
    }

    private void setMediaSession(Token token) {
        MediaMetadataCompat mediaMetadataCompat;
        MediaControllerCompat mediaControllerCompat = this.mMediaController;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(this.mControllerCallback);
            this.mMediaController = null;
        }
        if (token != null && this.mAttachedToWindow) {
            try {
                this.mMediaController = new MediaControllerCompat(this.mContext, token);
            } catch (RemoteException e) {
                Log.e(TAG, "Error creating media controller in setMediaSession.", e);
            }
            MediaControllerCompat mediaControllerCompat2 = this.mMediaController;
            if (mediaControllerCompat2 != null) {
                mediaControllerCompat2.registerCallback(this.mControllerCallback);
            }
            MediaControllerCompat mediaControllerCompat3 = this.mMediaController;
            if (mediaControllerCompat3 == null) {
                mediaMetadataCompat = null;
            } else {
                mediaMetadataCompat = mediaControllerCompat3.getMetadata();
            }
            if (mediaMetadataCompat != null) {
                mediaDescriptionCompat = mediaMetadataCompat.getDescription();
            }
            this.mDescription = mediaDescriptionCompat;
            updateArtIconIfNeeded();
            update();
        }
    }

    public Token getMediaSession() {
        MediaControllerCompat mediaControllerCompat = this.mMediaController;
        if (mediaControllerCompat == null) {
            return null;
        }
        return mediaControllerCompat.getSessionToken();
    }

    @NonNull
    public MediaRouteSelector getRouteSelector() {
        return this.mSelector;
    }

    public void setRouteSelector(@NonNull MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        } else if (!this.mSelector.equals(mediaRouteSelector)) {
            this.mSelector = mediaRouteSelector;
            if (this.mAttachedToWindow) {
                this.mRouter.removeCallback(this.mCallback);
                this.mRouter.addCallback(mediaRouteSelector, this.mCallback, 1);
            }
            refreshRoutes();
        }
    }

    public void onFilterRoutes(@NonNull List<RouteInfo> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            if (!onFilterRoute((RouteInfo) list.get(size))) {
                list.remove(size);
            }
        }
    }

    public boolean onFilterRoute(@NonNull RouteInfo routeInfo) {
        return !routeInfo.isDefaultOrBluetooth() && routeInfo.isEnabled() && routeInfo.matchesSelector(this.mSelector);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_cast_dialog);
        this.mCloseButton = (ImageButton) findViewById(R.id.mr_cast_close_button);
        this.mCloseButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MediaRouteCastDialog.this.dismiss();
            }
        });
        this.mStopCastingButton = (Button) findViewById(R.id.mr_cast_stop_button);
        this.mStopCastingButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (MediaRouteCastDialog.this.mRoute.isSelected()) {
                    MediaRouteCastDialog.this.mRouter.unselect(2);
                }
                MediaRouteCastDialog.this.dismiss();
            }
        });
        this.mAdapter = new RecyclerAdapter();
        this.mRecyclerView = (RecyclerView) findViewById(R.id.mr_cast_list);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        this.mVolumeChangeListener = new VolumeChangeListener();
        this.mVolumeSliderColor = MediaRouterThemeHelper.getControllerColor(this.mContext, 0);
        this.mMetadataLayout = (RelativeLayout) findViewById(R.id.mr_cast_meta);
        this.mArtView = (ImageView) findViewById(R.id.mr_cast_meta_art);
        this.mTitleView = (TextView) findViewById(R.id.mr_cast_meta_title);
        this.mSubtitleView = (TextView) findViewById(R.id.mr_cast_meta_subtitle);
        this.mTitlePlaceholder = this.mContext.getResources().getString(R.string.mr_cast_dialog_title_view_placeholder);
        this.mCreated = true;
        updateLayout();
    }

    /* access modifiers changed from: 0000 */
    public void updateLayout() {
        getWindow().setLayout(-1, -1);
        this.mArtIconBitmap = null;
        this.mArtIconUri = null;
        updateArtIconIfNeeded();
        update();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(this.mSelector, this.mCallback, 1);
        refreshRoutes();
        setMediaSession(this.mRouter.getMediaSessionToken());
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttachedToWindow = false;
        this.mRouter.removeCallback(this.mCallback);
        this.mHandler.removeMessages(1);
        setMediaSession(null);
    }

    /* access modifiers changed from: 0000 */
    public void update() {
        if (!this.mRoute.isSelected() || this.mRoute.isDefaultOrBluetooth()) {
            dismiss();
        } else if (this.mCreated) {
            if (this.mArtIconIsLoaded) {
                if (isBitmapRecycled(this.mArtIconLoadedBitmap)) {
                    this.mArtView.setVisibility(8);
                    StringBuilder sb = new StringBuilder();
                    sb.append("Can't set artwork image with recycled bitmap: ");
                    sb.append(this.mArtIconLoadedBitmap);
                    Log.w(TAG, sb.toString());
                } else {
                    this.mArtView.setVisibility(0);
                    this.mArtView.setImageBitmap(this.mArtIconLoadedBitmap);
                    this.mArtView.setBackgroundColor(this.mArtIconBackgroundColor);
                    this.mMetadataLayout.setBackgroundDrawable(new BitmapDrawable(this.mArtIconLoadedBitmap));
                }
                clearLoadedBitmap();
            } else {
                this.mArtView.setVisibility(8);
            }
            updateMetadataLayout();
        }
    }

    static boolean isBitmapRecycled(Bitmap bitmap) {
        return bitmap != null && bitmap.isRecycled();
    }

    /* access modifiers changed from: 0000 */
    public int getDesiredArtHeight(int i, int i2) {
        return this.mArtView.getHeight();
    }

    /* access modifiers changed from: 0000 */
    public void updateArtIconIfNeeded() {
        if (isIconChanged()) {
            FetchArtTask fetchArtTask = this.mFetchArtTask;
            if (fetchArtTask != null) {
                fetchArtTask.cancel(true);
            }
            this.mFetchArtTask = new FetchArtTask();
            this.mFetchArtTask.execute(new Void[0]);
        }
    }

    /* access modifiers changed from: 0000 */
    public void clearLoadedBitmap() {
        this.mArtIconIsLoaded = false;
        this.mArtIconLoadedBitmap = null;
        this.mArtIconBackgroundColor = 0;
    }

    private boolean isIconChanged() {
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        Uri uri = null;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        MediaDescriptionCompat mediaDescriptionCompat2 = this.mDescription;
        if (mediaDescriptionCompat2 != null) {
            uri = mediaDescriptionCompat2.getIconUri();
        }
        FetchArtTask fetchArtTask = this.mFetchArtTask;
        Bitmap iconBitmap2 = fetchArtTask == null ? this.mArtIconBitmap : fetchArtTask.getIconBitmap();
        FetchArtTask fetchArtTask2 = this.mFetchArtTask;
        Uri iconUri = fetchArtTask2 == null ? this.mArtIconUri : fetchArtTask2.getIconUri();
        if (iconBitmap2 != iconBitmap) {
            return true;
        }
        if (iconBitmap2 != null || !ObjectsCompat.equals(iconUri, uri)) {
            return false;
        }
        return true;
    }

    private void updateMetadataLayout() {
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        CharSequence charSequence = null;
        CharSequence title = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getTitle();
        boolean z = !TextUtils.isEmpty(title);
        MediaDescriptionCompat mediaDescriptionCompat2 = this.mDescription;
        if (mediaDescriptionCompat2 != null) {
            charSequence = mediaDescriptionCompat2.getSubtitle();
        }
        boolean z2 = !TextUtils.isEmpty(charSequence);
        if (z) {
            this.mTitleView.setText(title);
        } else {
            this.mTitleView.setText(this.mTitlePlaceholder);
        }
        if (z2) {
            this.mSubtitleView.setText(charSequence);
            this.mSubtitleView.setVisibility(0);
            return;
        }
        this.mSubtitleView.setVisibility(8);
    }

    public void refreshRoutes() {
        if (this.mAttachedToWindow) {
            ArrayList arrayList = new ArrayList(this.mRouter.getRoutes());
            onFilterRoutes(arrayList);
            Collections.sort(arrayList, RouteComparator.sInstance);
            if (SystemClock.uptimeMillis() - this.mLastUpdateTime >= UPDATE_ROUTES_DELAY_MS) {
                updateRoutes(arrayList);
                return;
            }
            this.mHandler.removeMessages(1);
            Handler handler = this.mHandler;
            handler.sendMessageAtTime(handler.obtainMessage(1, arrayList), this.mLastUpdateTime + UPDATE_ROUTES_DELAY_MS);
        }
    }

    /* access modifiers changed from: 0000 */
    public void updateRoutes(List<RouteInfo> list) {
        this.mLastUpdateTime = SystemClock.uptimeMillis();
        this.mRoutes.clear();
        this.mRoutes.addAll(list);
        this.mAdapter.setItems();
    }
}
