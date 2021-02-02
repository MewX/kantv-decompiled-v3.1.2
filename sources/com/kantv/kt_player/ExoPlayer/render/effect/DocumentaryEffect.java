package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;
import java.util.Date;
import java.util.Random;

public class DocumentaryEffect implements ShaderInterface {
    private int mHeight;
    private Random mRandom;
    private int mWidth;

    private void initValues(GLSurfaceView gLSurfaceView) {
        this.mWidth = gLSurfaceView.getWidth();
        this.mHeight = gLSurfaceView.getHeight();
        this.mRandom = new Random(new Date().getTime());
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
        float[] fArr2 = {this.mRandom.nextFloat(), this.mRandom.nextFloat()};
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
        sb3.append("seed[0] = ");
        sb3.append(fArr2[0]);
        sb3.append(str);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("seed[1] = ");
        sb4.append(fArr2[1]);
        sb4.append(str);
        String[] strArr2 = {sb3.toString(), sb4.toString()};
        StringBuilder sb5 = new StringBuilder();
        sb5.append("inv_max_dist = ");
        sb5.append(1.0f / sqrt);
        sb5.append(str);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec2 seed;\n float stepsize;\n float inv_max_dist;\n vec2 scale;\nvarying vec2 vTextureCoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n");
        sb7.append(strArr[0]);
        sb7.append(strArr[1]);
        sb7.append(strArr2[0]);
        sb7.append(strArr2[1]);
        sb7.append(sb6);
        sb7.append("stepsize = 0.003921569;\n");
        sb7.append("  vec4 color = texture2D(sTexture, vTextureCoord);\n  float dither = rand(vTextureCoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n");
        return sb7.toString();
    }
}
