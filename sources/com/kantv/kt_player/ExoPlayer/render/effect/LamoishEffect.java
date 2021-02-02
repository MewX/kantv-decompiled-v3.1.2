package com.kantv.kt_player.ExoPlayer.render.effect;

import android.opengl.GLSurfaceView;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;
import java.util.Date;
import java.util.Random;

public class LamoishEffect implements ShaderInterface {
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
        sb7.append("stepsizeX = ");
        sb7.append(1.0f / ((float) this.mWidth));
        sb7.append(str);
        String sb8 = sb7.toString();
        StringBuilder sb9 = new StringBuilder();
        sb9.append("stepsizeY = ");
        sb9.append(1.0f / ((float) this.mHeight));
        sb9.append(str);
        String sb10 = sb9.toString();
        StringBuilder sb11 = new StringBuilder();
        sb11.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec2 seed;\n float stepsizeX;\n float stepsizeY;\n float stepsize;\n vec2 scale;\n float inv_max_dist;\nvarying vec2 vTextureCoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n");
        sb11.append(strArr[0]);
        sb11.append(strArr[1]);
        sb11.append(strArr2[0]);
        sb11.append(strArr2[1]);
        sb11.append(sb6);
        sb11.append("stepsize = 0.003921569;\n");
        sb11.append(sb8);
        sb11.append(sb10);
        sb11.append("  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  vec3 s_color = vec3(color.rgb + 0.3 * nbr_color);\n  vec3 c_color = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (s_color.r < 0.5) {\n    value = s_color.r;\n  } else {\n    value = 1.0 - s_color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (s_color.r < 0.5) {\n    c_color.r = red;\n  } else {\n    c_color.r = 1.0 - red;\n  }\n  if (s_color.g < 0.5) {\n    value = s_color.g;\n  } else {\n    value = 1.0 - s_color.g;\n  }\n  float green = 2.0 * value * value;\n  if (s_color.g < 0.5) {\n    c_color.g = green;\n  } else {\n    c_color.g = 1.0 - green;\n  }\n  c_color.b = s_color.b * 0.5 + 0.25;\n  float dither = rand(vTextureCoord + seed);\n  vec3 xform = clamp((c_color.rgb - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 bw_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.73) * 20.0)) + 0.15;\n  gl_FragColor = vec4(bw_color * lumen, color.a);\n}\n");
        return sb11.toString();
    }
}
