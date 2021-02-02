package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import androidx.annotation.NonNull;

class GifViewSavedState extends BaseSavedState {
    public static final Creator<GifViewSavedState> CREATOR = new Creator<GifViewSavedState>() {
        public GifViewSavedState createFromParcel(Parcel parcel) {
            return new GifViewSavedState(parcel);
        }

        public GifViewSavedState[] newArray(int i) {
            return new GifViewSavedState[i];
        }
    };
    final long[][] mStates;

    GifViewSavedState(Parcelable parcelable, Drawable... drawableArr) {
        super(parcelable);
        this.mStates = new long[drawableArr.length][];
        for (int i = 0; i < drawableArr.length; i++) {
            GifDrawable gifDrawable = drawableArr[i];
            if (gifDrawable instanceof GifDrawable) {
                this.mStates[i] = gifDrawable.mNativeInfoHandle.getSavedState();
            } else {
                this.mStates[i] = null;
            }
        }
    }

    private GifViewSavedState(Parcel parcel) {
        super(parcel);
        this.mStates = new long[parcel.readInt()][];
        int i = 0;
        while (true) {
            long[][] jArr = this.mStates;
            if (i < jArr.length) {
                jArr[i] = parcel.createLongArray();
                i++;
            } else {
                return;
            }
        }
    }

    GifViewSavedState(Parcelable parcelable, long[] jArr) {
        super(parcelable);
        this.mStates = new long[1][];
        this.mStates[0] = jArr;
    }

    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.mStates.length);
        for (long[] writeLongArray : this.mStates) {
            parcel.writeLongArray(writeLongArray);
        }
    }

    /* access modifiers changed from: 0000 */
    public void restoreState(Drawable drawable, int i) {
        if (this.mStates[i] != null && (drawable instanceof GifDrawable)) {
            GifDrawable gifDrawable = (GifDrawable) drawable;
            gifDrawable.startAnimation((long) gifDrawable.mNativeInfoHandle.restoreSavedState(this.mStates[i], gifDrawable.mBuffer));
        }
    }
}
