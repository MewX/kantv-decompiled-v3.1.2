package com.shuyu.gsyvideoplayer.render.effect;

import android.graphics.Color;
import android.opengl.GLSurfaceView;
import androidx.core.view.InputDeviceCompat;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;

public class DuotoneEffect implements ShaderInterface {
    private int mFirstColor = -65281;
    private int mSecondColor = InputDeviceCompat.SOURCE_ANY;

    public DuotoneEffect(int i, int i2) {
        this.mFirstColor = i;
        this.mSecondColor = i2;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        float[] fArr = {((float) Color.red(this.mFirstColor)) / 255.0f, ((float) Color.green(this.mFirstColor)) / 255.0f, ((float) Color.blue(this.mFirstColor)) / 255.0f};
        float[] fArr2 = {((float) Color.red(this.mSecondColor)) / 255.0f, ((float) Color.green(this.mSecondColor)) / 255.0f, ((float) Color.blue(this.mSecondColor)) / 255.0f};
        StringBuilder sb = new StringBuilder();
        sb.append("first[0] = ");
        sb.append(fArr[0]);
        String str = ";\n";
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("first[1] = ");
        sb2.append(fArr[1]);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("first[2] = ");
        sb3.append(fArr[2]);
        sb3.append(str);
        String[] strArr = {sb.toString(), sb2.toString(), sb3.toString()};
        StringBuilder sb4 = new StringBuilder();
        sb4.append("second[0] = ");
        sb4.append(fArr2[0]);
        sb4.append(str);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("second[1] = ");
        sb5.append(fArr2[1]);
        sb5.append(str);
        StringBuilder sb6 = new StringBuilder();
        sb6.append("second[2] = ");
        sb6.append(fArr2[2]);
        sb6.append(str);
        String[] strArr2 = {sb4.toString(), sb5.toString(), sb6.toString()};
        StringBuilder sb7 = new StringBuilder();
        sb7.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec3 first;\n vec3 second;\nvarying vec2 vTextureCoord;\nvoid main() {\n");
        sb7.append(strArr[0]);
        sb7.append(strArr[1]);
        sb7.append(strArr[2]);
        sb7.append(strArr2[0]);
        sb7.append(strArr2[1]);
        sb7.append(strArr2[2]);
        sb7.append("  vec4 color = texture2D(sTexture, vTextureCoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n");
        return sb7.toString();
    }
}
