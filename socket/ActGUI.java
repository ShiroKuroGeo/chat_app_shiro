import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class ActGUI extends JFrame implements ActionListener {
    private JFrame frame;
    private JPanel panel;
    private JLabel label;
    private JLabel[] arrlabel = new JLabel[2];
    private JTextField txtint;
    private JTextField[] arrtxt = new JTextField[2];
    private JButton btnans;
    private Control control;

    public ActGUI() {
        frame = new JFrame("MY CALCULATOR");
        frame.setSize(400, 400);
        panel = new JPanel();
        label = new JLabel("Enter Number: ");
        txtint = new JTextField(20);
        arrlabel[0] = new JLabel("Enter Operation: ");
        arrtxt[0] = new JTextField(6);
        arrlabel[1] = new JLabel("Enter Second Number: ");
        arrtxt[1] = new JTextField(20);
        btnans = new JButton("Calculate");
        panel.add(label);
        panel.add(txtint);
        panel.add(arrlabel[0]);
        panel.add(arrtxt[0]);
        panel.add(arrlabel[1]);
        panel.add(arrtxt[1]);
        panel.add(btnans);
        frame.add(panel);
        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        btnans.addActionListener(this);
        control = new Control();
    }

    public static void main(String[] args) {
        ActGUI a = new ActGUI();
    }

    public void actionPerformed(ActionEvent e) {
        Object source = e.getSource();

        if (source == btnans) {
            try {
                double num1 = Double.parseDouble(txtint.getText());
                char operation = arrtxt[0].getText().charAt(0);
                double num2 = Double.parseDouble(arrtxt[1].getText());

                double result = control.calculate(num1, operation, num2);

                JOptionPane.showMessageDialog(frame, "Result: " + result, "Calculation Result", JOptionPane.INFORMATION_MESSAGE);
            } catch (NumberFormatException ex) {

                JOptionPane.showMessageDialog(frame, "Error: Invalid input","Error", JOptionPane.ERROR_MESSAGE);
            }
        }
    }
}