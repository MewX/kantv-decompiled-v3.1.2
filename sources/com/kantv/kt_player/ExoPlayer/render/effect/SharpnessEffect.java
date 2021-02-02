package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;

public class SharpnessEffect implements ShaderInterface {
    private int mHeight;
    private int mWidth;
    private float scale = 0.0f;

    public SharpnessEffect(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.scale = f;
    }

    private void initValues(GLSurfaceView gLSurfaceView) {
        this.mWidth = gLSurfaceView.getWidth();
        this.mHeight = gLSurfaceView.getHeight();
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        initValues(gLSurfaceView);
        StringBuilder sb = new StringBuilder();
        sb.append("stepsizeX = ");
        sb.append(1.0f / ((float) this.mWidth));
        String str = ";\n";
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("stepsizeY = ");
        sb3.append(1.0f / ((float) this.mHeight));
        sb3.append(str);
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("scale = ");
        sb5.append(this.scale);
        sb5.append(str);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float scale;\n float stepsizeX;\n float stepsizeY;\nvarying vec2 vTextureCoord;\nvoid main() {\n");
        sb7.append(sb2);
        sb7.append(sb4);
        sb7.append(sb6);
        sb7.append("  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n");
        return sb7.toString();
    }
}
