package pl.droidsonroids.gif;

import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;
import androidx.annotation.RequiresApi;
import pl.droidsonroids.gif.GifTextureView.PlaceholderDrawListener;

@RequiresApi(14)
class PlaceholderDrawingSurfaceTextureListener implements SurfaceTextureListener {
    private final PlaceholderDrawListener mDrawer;

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    PlaceholderDrawingSurfaceTextureListener(PlaceholderDrawListener placeholderDrawListener) {
        this.mDrawer = placeholderDrawListener;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        Canvas lockCanvas = surface.lockCanvas(null);
        this.mDrawer.onDrawPlaceholder(lockCanvas);
        surface.unlockCanvasAndPost(lockCanvas);
        surface.release();
    }
}
