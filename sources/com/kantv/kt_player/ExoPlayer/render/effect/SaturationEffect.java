package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;

public class SaturationEffect implements ShaderInterface {
    private float scale = 0.0f;

    public SaturationEffect(float f) {
        this.scale = f;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        float[] fArr = {0.25f, 0.625f, 0.125f};
        float[] fArr2 = new float[3];
        String[] strArr = new String[3];
        String str = "";
        String[] strArr2 = {str, str, str};
        float f = this.scale;
        String str2 = ";\n";
        if (f > 0.0f) {
            fArr2[0] = (0.9f * f) + 1.0f;
            fArr2[1] = (2.1f * f) + 1.0f;
            fArr2[2] = (f * 2.7f) + 1.0f;
            StringBuilder sb = new StringBuilder();
            sb.append("exponents[0] = ");
            sb.append(fArr2[0]);
            sb.append(str2);
            strArr2[0] = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("exponents[1] = ");
            sb2.append(fArr2[1]);
            sb2.append(str2);
            strArr2[1] = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("exponents[2] = ");
            sb3.append(fArr2[2]);
            sb3.append(str2);
            strArr2[2] = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("scale = ");
            sb4.append(this.scale + 1.0f);
            sb4.append(str2);
            str = sb4.toString();
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("weights[0] = ");
        sb5.append(fArr[0]);
        sb5.append(str2);
        strArr[0] = sb5.toString();
        StringBuilder sb6 = new StringBuilder();
        sb6.append("weights[1] = ");
        sb6.append(fArr[1]);
        sb6.append(str2);
        strArr[1] = sb6.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append("weights[2] = ");
        sb7.append(fArr[2]);
        sb7.append(str2);
        strArr[2] = sb7.toString();
        StringBuilder sb8 = new StringBuilder();
        sb8.append("shift = ");
        sb8.append(0.003921569f);
        sb8.append(str2);
        String sb9 = sb8.toString();
        StringBuilder sb10 = new StringBuilder();
        sb10.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float scale;\n float shift;\n vec3 weights;\n vec3 exponents;\nvarying vec2 vTextureCoord;\nvoid main() {\n");
        sb10.append(strArr[0]);
        sb10.append(strArr[1]);
        sb10.append(strArr[2]);
        sb10.append(sb9);
        sb10.append(str);
        sb10.append("  vec4 oldcolor = texture2D(sTexture, vTextureCoord);\n  float kv = dot(oldcolor.rgb, weights) + shift;\n  vec3 new_color = scale * oldcolor.rgb + (1.0 - scale) * kv;\n  gl_FragColor= vec4(new_color, oldcolor.a);\n");
        sb10.append(strArr[0]);
        sb10.append(strArr[1]);
        sb10.append(strArr[2]);
        sb10.append(strArr2[0]);
        sb10.append(strArr2[1]);
        sb10.append(strArr2[2]);
        sb10.append("  vec4 color = texture2D(sTexture, vTextureCoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 verynew_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(verynew_color.r, verynew_color.g), verynew_color.b), 1.0);\n  gl_FragColor = gl_FragColor+vec4(verynew_color / max_color, color.a);\n}\n");
        return sb10.toString();
    }
}
