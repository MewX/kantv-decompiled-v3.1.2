package com.shuyu.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;

public class SepiaEffect implements ShaderInterface {
    public String getShader(GLSurfaceView gLSurfaceView) {
        float[] fArr = {0.3930664f, 0.3491211f, 0.27197266f, 0.76904297f, 0.68603516f, 0.53564453f, 0.18896484f, 0.16796875f, 0.13085938f};
        StringBuilder sb = new StringBuilder();
        sb.append("  matrix[0][0]=");
        sb.append(fArr[0]);
        String str = ";\n";
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  matrix[0][1]=");
        sb2.append(fArr[1]);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("  matrix[0][2]=");
        sb3.append(fArr[2]);
        sb3.append(str);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("  matrix[1][0]=");
        sb4.append(fArr[3]);
        sb4.append(str);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("  matrix[1][1]=");
        sb5.append(fArr[4]);
        sb5.append(str);
        StringBuilder sb6 = new StringBuilder();
        sb6.append("  matrix[1][2]=");
        sb6.append(fArr[5]);
        sb6.append(str);
        StringBuilder sb7 = new StringBuilder();
        sb7.append("  matrix[2][0]=");
        sb7.append(fArr[6]);
        sb7.append(str);
        StringBuilder sb8 = new StringBuilder();
        sb8.append("  matrix[2][1]=");
        sb8.append(fArr[7]);
        sb8.append(str);
        StringBuilder sb9 = new StringBuilder();
        sb9.append("  matrix[2][2]=");
        sb9.append(fArr[8]);
        sb9.append(str);
        String[] strArr = {sb.toString(), sb2.toString(), sb3.toString(), sb4.toString(), sb5.toString(), sb6.toString(), sb7.toString(), sb8.toString(), sb9.toString()};
        StringBuilder sb10 = new StringBuilder();
        sb10.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n mat3 matrix;\nvarying vec2 vTextureCoord;\nvoid main() {\n");
        sb10.append(strArr[0]);
        sb10.append(strArr[1]);
        sb10.append(strArr[2]);
        sb10.append(strArr[3]);
        sb10.append(strArr[4]);
        sb10.append(strArr[5]);
        sb10.append(strArr[6]);
        sb10.append(strArr[7]);
        sb10.append(strArr[8]);
        sb10.append("  vec4 color = texture2D(sTexture, vTextureCoord);\n  vec3 new_color = min(matrix * color.rgb, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n");
        return sb10.toString();
    }
}
