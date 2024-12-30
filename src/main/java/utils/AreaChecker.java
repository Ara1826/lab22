package utils;

public class AreaChecker {
    public static boolean isInArea(double x, double y, double r) {
        // Upper left corner with 1/4 circle of radius R
        if (x <= 0 && y >= 0) {
            return (x * x + y * y) <= r * r;
        }
        // Bottom left corner with rect
        if (x <= 0 && y <= 0) {
            return (x >= -r / 2) && (y >= -r);
        }
        // Bottom right corner with tre
        if (x >= 0 && y <= 0) {
            return (x <= r / 2) && (y >= 2*x - r);
        }
        // Upper right corner with nothing in it
        return false;
    }
}