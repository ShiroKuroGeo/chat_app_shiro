import javax.swing.JOptionPane;

public class Control {
    public double calculate(double num1, char operation, double num2) {
        double result = 0.0;

        switch (operation) {
            case '+':
                result = num1 + num2;
                break;
            case '-':
                result = num1 - num2;
                break;
            case '*':
                result = num1 * num2;
                break;
            case '%':
				  result = num1 % num2;
                break;
            case '/':
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    // Handle division by zero using JOptionPane
                    JOptionPane.showMessageDialog(null, "Error: Division by zero", "Error", JOptionPane.ERROR_MESSAGE);
                    return 0;
                }
                break;
            default:
                JOptionPane.showMessageDialog(null, "Error: Invalid operation", "Error", JOptionPane.ERROR_MESSAGE);
                return 0;
        }

        return result;
    }
}