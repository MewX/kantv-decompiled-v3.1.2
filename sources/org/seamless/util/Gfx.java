package org.seamless.util;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

public class Gfx {
    public static byte[] resizeProportionally(ImageIcon imageIcon, String str, int i, int i2) throws IOException {
        double d;
        double d2 = 1.0d;
        if (i != imageIcon.getIconWidth()) {
            double d3 = (double) i;
            double iconWidth = (double) imageIcon.getIconWidth();
            Double.isNaN(d3);
            Double.isNaN(iconWidth);
            d = d3 / iconWidth;
        } else {
            d = 1.0d;
        }
        if (i2 != imageIcon.getIconHeight()) {
            double d4 = (double) i2;
            double iconHeight = (double) imageIcon.getIconHeight();
            Double.isNaN(d4);
            Double.isNaN(iconHeight);
            d2 = d4 / iconHeight;
        }
        if (d < d2) {
            double iconHeight2 = (double) imageIcon.getIconHeight();
            Double.isNaN(iconHeight2);
            i2 = (int) (iconHeight2 * d);
        } else {
            double iconWidth2 = (double) imageIcon.getIconWidth();
            Double.isNaN(iconWidth2);
            i = (int) (iconWidth2 * d2);
        }
        String str2 = DLNAMimeTypes.MIME_IMAGE_PNG;
        BufferedImage bufferedImage = new BufferedImage(imageIcon.getIconWidth(), imageIcon.getIconHeight(), str2.equals(str) ? 2 : 1);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.drawImage(imageIcon.getImage(), 0, 0, imageIcon.getIconWidth(), imageIcon.getIconHeight(), null);
        createGraphics.dispose();
        BufferedImage scaledInstance = getScaledInstance(bufferedImage, i, i2, RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR, false);
        String str3 = str2.equals(str) ? "png" : (DLNAMimeTypes.MIME_IMAGE_JPEG.equals(str) || "image/jpg".equals(str)) ? "jpeg" : "";
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        ImageIO.write(scaledInstance, str3, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0020  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.awt.image.BufferedImage getScaledInstance(java.awt.image.BufferedImage r11, int r12, int r13, java.lang.Object r14, boolean r15) {
        /*
            int r0 = r11.getTransparency()
            r1 = 1
            if (r0 != r1) goto L_0x0008
            goto L_0x0009
        L_0x0008:
            r1 = 2
        L_0x0009:
            if (r15 == 0) goto L_0x0015
            int r0 = r11.getWidth()
            int r2 = r11.getHeight()
        L_0x0013:
            r4 = r11
            goto L_0x0018
        L_0x0015:
            r4 = r11
            r0 = r12
            r2 = r13
        L_0x0018:
            if (r15 == 0) goto L_0x0021
            if (r0 <= r12) goto L_0x0021
            int r0 = r0 / 2
            if (r0 >= r12) goto L_0x0021
            r0 = r12
        L_0x0021:
            if (r15 == 0) goto L_0x002a
            if (r2 <= r13) goto L_0x002a
            int r2 = r2 / 2
            if (r2 >= r13) goto L_0x002a
            r2 = r13
        L_0x002a:
            java.awt.image.BufferedImage r11 = new java.awt.image.BufferedImage
            r11.<init>(r0, r2, r1)
            java.awt.Graphics2D r10 = r11.createGraphics()
            java.awt.RenderingHints$Key r3 = java.awt.RenderingHints.KEY_INTERPOLATION
            r10.setRenderingHint(r3, r14)
            r5 = 0
            r6 = 0
            r9 = 0
            r3 = r10
            r7 = r0
            r8 = r2
            r3.drawImage(r4, r5, r6, r7, r8, r9)
            r10.dispose()
            if (r0 != r12) goto L_0x0013
            if (r2 != r13) goto L_0x0013
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Gfx.getScaledInstance(java.awt.image.BufferedImage, int, int, java.lang.Object, boolean):java.awt.image.BufferedImage");
    }
}
