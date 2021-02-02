package com.shuyu.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;
import java.util.Date;
import java.util.Random;

public class GrainEffect implements ShaderInterface {
    private int mHeight;
    private Random mRandom;
    private int mWidth;
    private float strength;

    public GrainEffect(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.strength = f;
    }

    private void initValues(GLSurfaceView gLSurfaceView) {
        this.mWidth = gLSurfaceView.getWidth();
        this.mHeight = gLSurfaceView.getHeight();
        this.mRandom = new Random(new Date().getTime());
    }

    public String getShader(GLSurfaceView gLSurfaceView) {
        initValues(gLSurfaceView);
        float[] fArr = {this.mRandom.nextFloat(), this.mRandom.nextFloat()};
        StringBuilder sb = new StringBuilder();
        sb.append("scale = ");
        sb.append(this.strength);
        String str = ";\n";
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("seed[0] = ");
        sb3.append(fArr[0]);
        sb3.append(str);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("seed[1] = ");
        sb4.append(fArr[1]);
        sb4.append(str);
        String[] strArr = {sb3.toString(), sb4.toString()};
        StringBuilder sb5 = new StringBuilder();
        sb5.append("stepX = ");
        sb5.append(0.5f / ((float) this.mWidth));
        sb5.append(str);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append("stepY = ");
        sb7.append(0.5f / ((float) this.mHeight));
        sb7.append(str);
        String sb8 = sb7.toString();
        StringBuilder sb9 = new StringBuilder();
        sb9.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n vec2 seed;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES tex_sampler_0;\nuniform samplerExternalOES tex_sampler_1;\nfloat scale;\n float stepX;\n float stepY;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  float sum = (part1 + part2 + part3);\n  return fract(sum)*scale;\n}\nvoid main() {\n");
        sb9.append(strArr[0]);
        sb9.append(strArr[1]);
        sb9.append(sb2);
        sb9.append(sb6);
        sb9.append(sb8);
        sb9.append("  float noise = texture2D(tex_sampler_1, vTextureCoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, vTextureCoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, vTextureCoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, vTextureCoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, vTextureCoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n  gl_FragColor = gl_FragColor+vec4(rand(vTextureCoord + seed), rand(vTextureCoord + seed),rand(vTextureCoord + seed),1);\n}\n");
        return sb9.toString();
    }
}
