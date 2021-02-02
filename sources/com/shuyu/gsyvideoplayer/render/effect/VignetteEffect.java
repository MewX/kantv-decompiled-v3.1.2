package com.shuyu.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;

public class VignetteEffect implements ShaderInterface {
    private int mHeight = 0;
    private float mScale = 0.0f;
    private final float mShade = 0.85f;
    private int mWidth = 0;

    public VignetteEffect(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.mScale = f;
    }

    private void initValues(GLSurfaceView gLSurfaceView) {
        this.mWidth = gLSurfaceView.getWidth();
        this.mHeight = gLSurfaceView.getHeight();
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        initValues(gLSurfaceView);
        float[] fArr = new float[2];
        int i = this.mWidth;
        int i2 = this.mHeight;
        if (i > i2) {
            fArr[0] = 1.0f;
            fArr[1] = ((float) i2) / ((float) i);
        } else {
            fArr[0] = ((float) i) / ((float) i2);
            fArr[1] = 1.0f;
        }
        float sqrt = ((float) Math.sqrt((double) ((fArr[0] * fArr[0]) + (fArr[1] * fArr[1])))) * 0.5f;
        StringBuilder sb = new StringBuilder();
        sb.append("scale[0] = ");
        sb.append(fArr[0]);
        String str = ";\n";
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("scale[1] = ");
        sb2.append(fArr[1]);
        sb2.append(str);
        String[] strArr = {sb.toString(), sb2.toString()};
        StringBuilder sb3 = new StringBuilder();
        sb3.append("inv_max_dist = ");
        sb3.append(1.0f / sqrt);
        sb3.append(str);
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("range = ");
        sb5.append(1.3f - (((float) Math.sqrt((double) this.mScale)) * 0.7f));
        sb5.append(str);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float range;\n float inv_max_dist;\n float shade;\n vec2 scale;\nvarying vec2 vTextureCoord;\nvoid main() {\n");
        sb7.append(strArr[0]);
        sb7.append(strArr[1]);
        sb7.append(sb4);
        sb7.append("shade = 0.85;\n");
        sb7.append(sb6);
        sb7.append("  const float slope = 20.0;\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n");
        return sb7.toString();
    }
}
