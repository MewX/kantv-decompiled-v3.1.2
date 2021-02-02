package org.seamless.util.math;

public class Rectangle {
    private int height;
    private Point position;
    private int width;

    public Rectangle() {
    }

    public Rectangle(Point point, int i, int i2) {
        this.position = point;
        this.width = i;
        this.height = i2;
    }

    public void reset() {
        this.position = new Point(0, 0);
        this.width = 0;
        this.height = 0;
    }

    public Point getPosition() {
        return this.position;
    }

    public void setPosition(Point point) {
        this.position = point;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public Rectangle intersection(Rectangle rectangle) {
        int x = this.position.getX();
        int y = this.position.getY();
        int x2 = rectangle.position.getX();
        int y2 = rectangle.position.getY();
        long j = ((long) x) + ((long) this.width);
        long j2 = ((long) y) + ((long) this.height);
        long j3 = ((long) x2) + ((long) rectangle.width);
        long j4 = ((long) y2) + ((long) rectangle.height);
        if (x < x2) {
            x = x2;
        }
        if (y < y2) {
            y = y2;
        }
        if (j > j3) {
            j = j3;
        }
        if (j2 > j4) {
            j2 = j4;
        }
        long j5 = j - ((long) x);
        long j6 = j2 - ((long) y);
        long j7 = -2147483648L;
        if (j5 < -2147483648L) {
            j5 = -2147483648L;
        }
        if (j6 >= -2147483648L) {
            j7 = j6;
        }
        return new Rectangle(new Point(x, y), (int) j5, (int) j7);
    }

    public boolean isOverlapping(Rectangle rectangle) {
        Rectangle intersection = intersection(rectangle);
        return intersection.getWidth() > 0 && intersection.getHeight() > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rectangle(");
        sb.append(this.position);
        sb.append(" - ");
        sb.append(this.width);
        sb.append("x");
        sb.append(this.height);
        sb.append(")");
        return sb.toString();
    }
}
