package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;

public class ContrastEffect implements ShaderInterface {
    private float contrast;

    public ContrastEffect(float f) {
        if (f < 0.1f) {
            f = 0.1f;
        }
        if (f > 2.0f) {
            f = 2.0f;
        }
        this.contrast = f;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        StringBuilder sb = new StringBuilder();
        sb.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  contrast =");
        sb.append(this.contrast);
        sb.append(";\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n");
        return sb.toString();
    }
}
