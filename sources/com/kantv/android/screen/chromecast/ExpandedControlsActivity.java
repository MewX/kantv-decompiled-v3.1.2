package com.kantv.android.screen.chromecast;

import android.view.Menu;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.kantv.android.screen.R;

public class ExpandedControlsActivity extends ExpandedControllerActivity {
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.expanded_controller, menu);
        CastButtonFactory.setUpMediaRouteButton(this, menu, R.id.media_route_menu_item);
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        try {
            MediaRouter instance = MediaRouter.getInstance(this);
            if (instance != null) {
                instance.unselect(2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onDestroy();
    }
}
