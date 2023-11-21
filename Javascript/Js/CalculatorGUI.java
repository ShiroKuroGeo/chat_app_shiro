import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CalculatorGUI extends JFrame {

    private JTextField textField;
    private double num1, num2;
    private String operator;

    public CalculatorGUI() {
        setTitle("Simple Calculator");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(300, 300);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(5, 4));

        textField = new JTextField();
        textField.setHorizontalAlignment(SwingConstants.RIGHT);
        panel.add(textField);

        String[] buttonLabels = { "/", "*", "-", "C", "=", "+"
        };

        for (String label : buttonLabels) {
            JButton button = new JButton(label);
            panel.add(button);
            button.addActionListener(new ButtonClickListener());
        }

        add(panel);

        setVisible(true);
    }

    private class ButtonClickListener implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            String command = e.getActionCommand();

            if (command.matches("[0-9]")) {
                textField.setText(textField.getText() + command);
            } else if (command.equals("C")) {
                textField.setText("");
                num1 = num2 = 0;
                operator = null;
            } else if (command.matches("[\\+\\-*/]")) {
                if (num1 == 0) {
                    num1 = Double.parseDouble(textField.getText());
                    operator = command;
                    textField.setText("");
                }
            } else if (command.equals("=")) {
                if (num1 != 0 && !textField.getText().isEmpty()) {
                    num2 = Double.parseDouble(textField.getText());
                    double result = calculate(num1, num2, operator);
                    textField.setText(String.valueOf(result));
                    num1 = num2 = 0;
                    operator = null;
                }
            }
        }
    }

    private double calculate(double num1, double num2, String operator) {
        switch (operator) {
            case "+":
                return num1 + num2;
            case "-":
                return num1 - num2;
            case "*":
                return num1 * num2;
            case "/":
                if (num2 != 0) {
                    return num1 / num2;
                } else {
                    return Double.NaN; // Handle division by zero
                }
            default:
                return 0;
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            new CalculatorGUI();
        });
    }
}