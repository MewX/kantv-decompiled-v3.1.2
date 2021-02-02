package com.shuyu.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;

public class FillLightEffect implements ShaderInterface {
    private float strength = 0.0f;

    public FillLightEffect(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.strength = f;
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        float f = 1.0f / (((1.0f - this.strength) * 0.7f) + 0.3f);
        float f2 = 1.0f / ((0.7f * f) + 0.3f);
        StringBuilder sb = new StringBuilder();
        sb.append("mult = ");
        sb.append(f);
        String str = ";\n";
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("igamma = ");
        sb3.append(f2);
        sb3.append(str);
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float mult;\n float igamma;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n");
        sb5.append(sb2);
        sb5.append(sb4);
        sb5.append("  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n");
        return sb5.toString();
    }
}
