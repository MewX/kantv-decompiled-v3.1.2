package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;

public class BrightnessEffect implements ShaderInterface {
    private float brightnessValue;

    public BrightnessEffect(float f) {
        if (f < 0.1f) {
            f = 0.1f;
        }
        if (f > 2.0f) {
            f = 2.0f;
        }
        this.brightnessValue = f;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        StringBuilder sb = new StringBuilder();
        sb.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nfloat brightness ;\nvarying vec2 vTextureCoord;\nvoid main() {\n  brightness =");
        sb.append(this.brightnessValue);
        sb.append(";\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = brightness * color;\n}\n");
        return sb.toString();
    }
}
