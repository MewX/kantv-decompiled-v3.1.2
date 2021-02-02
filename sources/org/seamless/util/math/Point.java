package org.seamless.util.math;

public class Point {
    private int x;
    private int y;

    public Point(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public Point multiply(double d) {
        int i;
        int i2 = this.x;
        int i3 = 0;
        if (i2 != 0) {
            double d2 = (double) i2;
            Double.isNaN(d2);
            i = (int) (d2 * d);
        } else {
            i = 0;
        }
        int i4 = this.y;
        if (i4 != 0) {
            double d3 = (double) i4;
            Double.isNaN(d3);
            i3 = (int) (d3 * d);
        }
        return new Point(i, i3);
    }

    public Point divide(double d) {
        int i;
        int i2 = this.x;
        int i3 = 0;
        if (i2 != 0) {
            double d2 = (double) i2;
            Double.isNaN(d2);
            i = (int) (d2 / d);
        } else {
            i = 0;
        }
        int i4 = this.y;
        if (i4 != 0) {
            double d3 = (double) i4;
            Double.isNaN(d3);
            i3 = (int) (d3 / d);
        }
        return new Point(i, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Point point = (Point) obj;
        return this.x == point.x && this.y == point.y;
    }

    public int hashCode() {
        return (this.x * 31) + this.y;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Point(");
        sb.append(this.x);
        sb.append("/");
        sb.append(this.y);
        sb.append(")");
        return sb.toString();
    }
}
