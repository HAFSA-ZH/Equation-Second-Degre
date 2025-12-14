package model;

public class Equation {
    private double a;
    private double b;
    private double c;

    public Equation(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double getA() { return a; }
    public double getB() { return b; }
    public double getC() { return c; }

    public double getDiscriminant() {
        return b * b - 4 * a * c;
    }

    public double[] getSolutions() {
        double delta = getDiscriminant();
        if(delta < 0) {
            return new double[]{}; // Pas de solution réelle
        } else if(delta == 0) {
            return new double[]{ -b / (2 * a) }; // Une solution
        } else {
            return new double[]{
                (-b + Math.sqrt(delta)) / (2 * a),
                (-b - Math.sqrt(delta)) / (2 * a)
            };
        }
    }
}
