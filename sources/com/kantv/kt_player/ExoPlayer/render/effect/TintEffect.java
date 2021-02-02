package com.kantv.kt_player.ExoPlayer.render.effect;

import android.graphics.Color;
import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;

public class TintEffect implements ShaderInterface {
    private int mTint = -16776961;

    public TintEffect(int i) {
        this.mTint = i;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        float[] fArr = {0.21f, 0.71f, 0.07f};
        StringBuilder sb = new StringBuilder();
        sb.append("color_ratio[0] = ");
        sb.append(fArr[0]);
        String str = ";\n";
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("color_ratio[1] = ");
        sb2.append(fArr[1]);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("color_ratio[2] = ");
        sb3.append(fArr[2]);
        sb3.append(str);
        String[] strArr = {sb.toString(), sb2.toString(), sb3.toString()};
        float[] fArr2 = {((float) Color.red(this.mTint)) / 255.0f, ((float) Color.green(this.mTint)) / 255.0f, ((float) Color.blue(this.mTint)) / 255.0f};
        StringBuilder sb4 = new StringBuilder();
        sb4.append("tint[0] = ");
        sb4.append(fArr2[0]);
        sb4.append(str);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("tint[1] = ");
        sb5.append(fArr2[1]);
        sb5.append(str);
        StringBuilder sb6 = new StringBuilder();
        sb6.append("tint[2] = ");
        sb6.append(fArr2[2]);
        sb6.append(str);
        String[] strArr2 = {sb4.toString(), sb5.toString(), sb6.toString()};
        StringBuilder sb7 = new StringBuilder();
        sb7.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec3 tint;\n vec3 color_ratio;\nvarying vec2 vTextureCoord;\nvoid main() {\n");
        sb7.append(strArr[0]);
        sb7.append(strArr[1]);
        sb7.append(strArr[2]);
        sb7.append(strArr2[0]);
        sb7.append(strArr2[1]);
        sb7.append(strArr2[2]);
        sb7.append("  vec4 color = texture2D(sTexture, vTextureCoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n");
        return sb7.toString();
    }
}
