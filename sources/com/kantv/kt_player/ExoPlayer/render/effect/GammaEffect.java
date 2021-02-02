package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;

public class GammaEffect implements ShaderInterface {
    private float gammaValue;

    public GammaEffect(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 2.0f) {
            f = 2.0f;
        }
        this.gammaValue = f;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        StringBuilder sb = new StringBuilder();
        sb.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nfloat gamma=");
        sb.append(this.gammaValue);
        sb.append(";\nvoid main() {\nvec4 textureColor = texture2D(sTexture, vTextureCoord);\ngl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n}\n");
        return sb.toString();
    }
}
