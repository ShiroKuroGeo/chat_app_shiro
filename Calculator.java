import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class Calculator implements ActionListener{

    double num1 = 0, num2 = 0, result = 0;
    int calculation;

     JFrame frame = new JFrame("Calculator");
     JLabel label = new JLabel();
     JTextField textField = new JTextField();
     JButton buttonZero = new JButton("0");
     JButton buttonOne = new JButton("1");
     JButton buttonTwo = new JButton("2");
     JButton buttonThree = new JButton("3");
     JButton buttonFour = new JButton("4");
     JButton buttonFive = new JButton("5");
     JButton buttonSix = new JButton("6");
     JButton buttonSeven = new JButton("7");
     JButton buttonEighth = new JButton("8");
     JButton buttonNine = new JButton("9");
     JButton buttonDot = new JButton(".");
     JButton buttonClear = new JButton("C");
     JButton buttonDelete = new JButton("DEL");
     JButton buttonEqual = new JButton("=");
     JButton buttonMul = new JButton("X");
     JButton buttonDiv = new JButton("/");
     JButton buttonPlus = new JButton("+");
     JButton buttonMinus = new JButton("-");
     JButton buttonSquare = new JButton("x\u00B2");
     JButton buttonReciprocal = new JButton("1/x");
     JButton buttonSqrt = new JButton("\u221A");
     JButton buttonPercent = new JButton("%");
     JButton buttonClearEntity = new JButton("CE");
     JButton buttonNegation = new JButton("+/-");
     JButton buttonMemoryClear = new JButton("MC");
     JButton buttonMemoryRecall = new JButton("MR");
     JButton buttonMemoryAdd = new JButton("M+");
     JButton buttonMemorySubtract = new JButton("M-");
     JTextField textMemory = new JTextField();





    Calculator(){
       prepareGui();
       addComponents();
       addActionEvent();
    }
    public void addComponents(){

        label.setBounds(250,0,50,50);
        label.setForeground(Color.white);
        frame.getContentPane().add(label);

        textField.setBounds(10,44,270,50);
        textField.setFont(new Font("Arial",Font.BOLD,20));
        textField.setEditable(false);
        textField.setHorizontalAlignment(SwingConstants.RIGHT);
        frame.getContentPane().add(textField);


        ButtonGroup buttonGroup = new ButtonGroup();
        buttonGroup.add(onRadioButton);
        buttonGroup.add(offRadioButton);
        buttonSeven.setForeground(Color.WHITE);
        buttonSeven.setBackground(Color.DARK_GRAY);
        buttonSeven.setBorder(null);
        buttonSeven.setBounds(10,258,60,40);
        buttonSeven.setFont(new Font("Arial",Font.BOLD,20));
        buttonSeven.setFocusable(false);
        frame.getContentPane().add(buttonSeven);
        buttonEighth.setForeground(Color.WHITE);
        buttonEighth.setBackground(Color.DARK_GRAY);

        buttonEighth.setBounds(80,258,60,40);
        buttonEighth.setBorder(null);
        buttonEighth.setFont(new Font("Arial",Font.BOLD,20));
        buttonEighth.setFocusable(false);
        frame.getContentPane().add(buttonEighth);
        buttonNine.setForeground(Color.WHITE);
        buttonNine.setBackground(Color.DARK_GRAY);

        buttonNine.setBounds(150,258,60,40);
        buttonNine.setBorder(null);
        buttonNine.setFont(new Font("Arial",Font.BOLD,20));
        buttonNine.setFocusable(false);
        frame.getContentPane().add(buttonNine);
        buttonFour.setForeground(Color.WHITE);
        buttonFour.setBackground(Color.DARK_GRAY);

        buttonFour.setBounds(10,309,60,40);
        buttonFour.setBorder(null);
        buttonFour.setFont(new Font("Arial",Font.BOLD,20));
        buttonFour.setFocusable(false);
        frame.getContentPane().add(buttonFour);
        buttonFive.setForeground(Color.WHITE);
        buttonFive.setBackground(Color.DARK_GRAY);

        buttonFive.setBounds(80,309,60,40);
        buttonFive.setBorder(null);
        buttonFive.setFont(new Font("Arial",Font.BOLD,20));
        buttonFive.setFocusable(false);
        frame.getContentPane().add(buttonFive);
        buttonSix.setForeground(Color.WHITE);
        buttonSix.setBackground(Color.DARK_GRAY);

        buttonSix.setBounds(150,309,60,40);
        buttonSix.setBorder(null);
        buttonSix.setFont(new Font("Arial",Font.BOLD,20));
        buttonSix.setFocusable(false);
        frame.getContentPane().add(buttonSix);
        buttonOne.setForeground(Color.WHITE);
        buttonOne.setBackground(Color.DARK_GRAY);

        buttonOne.setBounds(10,360,60,40);
        buttonOne.setBorder(null);
        buttonOne.setFont(new Font("Arial",Font.BOLD,20));
        buttonOne.setFocusable(false);
        frame.getContentPane().add(buttonOne);
        buttonTwo.setForeground(Color.WHITE);
        buttonTwo.setBackground(Color.DARK_GRAY);

        buttonTwo.setBounds(80,360,60,40);
        buttonTwo.setBorder(null);
        buttonTwo.setFont(new Font("Arial",Font.BOLD,20));
        buttonTwo.setFocusable(false);
        frame.getContentPane().add(buttonTwo);
        buttonThree.setForeground(Color.WHITE);
        buttonThree.setBackground(Color.DARK_GRAY);

        buttonThree.setBounds(150,360,60,40);
        buttonThree.setBorder(null);
        buttonThree.setFont(new Font("Arial",Font.BOLD,20));
        buttonThree.setFocusable(false);
        frame.getContentPane().add(buttonThree);
        buttonDot.setBackground(Color.ORANGE);

        buttonDot.setBounds(150,411,60,40);
        buttonDot.setBorder(null);
        buttonDot.setFont(new Font("Arial",Font.BOLD,20));
        buttonDot.setFocusable(false);
        frame.getContentPane().add(buttonDot);
        buttonZero.setForeground(Color.WHITE);
        buttonZero.setBackground(Color.DARK_GRAY);

        buttonZero.setBounds(80,411,60,40);
        buttonZero.setBorder(null);
        buttonZero.setFont(new Font("Arial",Font.BOLD,20));
        buttonZero.setFocusable(false);
        frame.getContentPane().add(buttonZero);

        buttonEqual.setBounds(220,411,60,40);
        buttonEqual.setBorder(null);
        buttonEqual.setFont(new Font("Arial",Font.BOLD,20));
        buttonEqual.setBackground(Color.LIGHT_GRAY);
        buttonEqual.setForeground(Color.black);
        buttonEqual.setFocusable(false);
        frame.getContentPane().add(buttonEqual);

        buttonDiv.setBounds(220,207,60,40);
        buttonDiv.setBorder(null);
        buttonDiv.setFont(new Font("Arial",Font.BOLD,20));
        buttonDiv.setBackground(Color.ORANGE);
        buttonDiv.setForeground(Color.black);
        buttonDiv.setFocusable(false);
        frame.getContentPane().add(buttonDiv);
        buttonSqrt.setBackground(Color.ORANGE);

        buttonSqrt.setBounds(150,207,60,40);
        buttonSqrt.setFont(new Font("Arial",Font.BOLD,18));
        buttonSqrt.setFocusable(false);
        buttonSqrt.setBorder(null);
        frame.getContentPane().add(buttonSqrt);

        buttonMul.setBounds(220,258,60,40);
        buttonMul.setBorder(null);
        buttonMul.setFont(new Font("Arial",Font.BOLD,20));
        buttonMul.setBackground(Color.ORANGE);
        buttonMul.setForeground(Color.black);
        buttonMul.setFocusable(false);
        frame.getContentPane().add(buttonMul);

        buttonMinus.setBounds(220,309,60,40);
        buttonMinus.setBorder(null);
        buttonMinus.setFont(new Font("Arial",Font.BOLD,20));
        buttonMinus.setBackground(Color.ORANGE);
        buttonMinus.setForeground(Color.black);
        buttonMinus.setFocusable(false);
        frame.getContentPane().add(buttonMinus);

        buttonPlus.setBounds(220,360,60,40);
        buttonPlus.setBorder(null);
        buttonPlus.setFont(new Font("Arial",Font.BOLD,20));
        buttonPlus.setBackground(Color.ORANGE);
        buttonPlus.setForeground(Color.black);
        buttonPlus.setFocusable(false);
        frame.getContentPane().add(buttonPlus);
        buttonSquare.setBackground(Color.ORANGE);

        buttonSquare.setBounds(80,207,60,40);
        buttonSquare.setBorder(null);
        buttonSquare.setFont(new Font("Arial",Font.BOLD,20));
        buttonSquare.setFocusable(false);
        frame.getContentPane().add(buttonSquare);
        buttonReciprocal.setBackground(Color.ORANGE);

        buttonReciprocal.setBounds(10,207,60,40);
        buttonReciprocal.setBorder(null);
        buttonReciprocal.setFont(new Font("Arial",Font.BOLD,15));
        buttonReciprocal.setFocusable(false);
        frame.getContentPane().add(buttonReciprocal);

        buttonDelete.setBounds(220,156,60,40);
        buttonDelete.setBorder(null);
        buttonDelete.setFont(new Font("Arial",Font.BOLD,13));
        buttonDelete.setBackground(Color.blue);
        buttonDelete.setForeground(Color.white);
        buttonDelete.setFocusable(false);
        frame.getContentPane().add(buttonDelete);

        buttonClear.setBounds(150,156,60,40);
        buttonClear.setBorder(null);
        buttonClear.setFont(new Font("Arial",Font.BOLD,20));
        buttonClear.setBackground(Color.red);
        buttonClear.setForeground(Color.white);
        buttonClear.setFocusable(false);
        frame.getContentPane().add(buttonClear);

        buttonPercent.setBackground(Color.ORANGE);
        buttonPercent.setBorder(null);
        buttonPercent.setFont(new Font("Arial", Font.BOLD, 18));
        buttonPercent.setFocusable(false);
        buttonPercent.setBounds(10, 156, 60, 40);
        frame.getContentPane().add(buttonPercent);

        buttonClearEntity.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {
        	}
        });
        buttonClearEntity.setBorder(null);
        buttonClearEntity.setForeground(Color.WHITE);
        buttonClearEntity.setFont(new Font("Arial", Font.BOLD, 18));
        buttonClearEntity.setFocusable(false);
        buttonClearEntity.setBackground(Color.RED);
        buttonClearEntity.setBounds(80, 156, 60, 40);

        frame.getContentPane().add(buttonClearEntity);
        buttonNegation.setBorder(null);
        buttonNegation.setBackground(Color.ORANGE);
        buttonNegation.setFont(new Font("Arial", Font.BOLD, 20));
        buttonNegation.setFocusable(false);
        buttonNegation.setBounds(10, 411, 60, 40);

        frame.getContentPane().add(buttonNegation);
        buttonMemoryClear.setBorder(null);
        buttonMemoryClear.setForeground(Color.WHITE);
        buttonMemoryClear.setBackground(Color.RED);
        buttonMemoryClear.setFont(new Font("Arial", Font.BOLD, 13));
        buttonMemoryClear.setFocusable(false);
        buttonMemoryClear.setBounds(10, 105, 60, 40);

        frame.getContentPane().add(buttonMemoryClear);
        buttonOne.setBorder(null);
        buttonMemoryRecall.setBackground(Color.ORANGE);
        buttonMemoryRecall.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {
        	}
        });
        buttonMemoryRecall.setFont(new Font("Arial", Font.BOLD, 13));
        buttonMemoryRecall.setBorder(null);
        buttonMemoryRecall.setFocusable(false);
        buttonMemoryRecall.setBounds(80, 105, 60, 40);

        frame.getContentPane().add(buttonMemoryRecall);
        buttonMemoryAdd.setBorder(null);
        buttonMemoryAdd.setBackground(Color.ORANGE);
        buttonMemoryAdd.setFont(new Font("Arial", Font.BOLD, 13));
        buttonMemoryAdd.setFocusable(false);
        buttonMemoryAdd.setBounds(150, 105, 60, 40);

        frame.getContentPane().add(buttonMemoryAdd);
        buttonMemorySubtract.setBorder(null);
        buttonMemorySubtract.setBackground(Color.LIGHT	_GRAY);
        buttonMemorySubtract.setFont(new Font("Arial", Font.BOLD, 13));
        buttonMemorySubtract.setFocusable(false);
        buttonMemorySubtract.setBounds(220, 105, 60, 40);

        frame.getContentPane().add(buttonMemorySubtract);

        textMemory = new JTextField();
        textMemory.setHorizontalAlignment(SwingConstants.RIGHT);
        textMemory.setFont(new Font("Arial", Font.BOLD, 20));
        textMemory.setEditable(false);
        textMemory.setBounds(10, 462, 270, 58);
        frame.getContentPane().add(textMemory);

    }

    public void prepareGui(){
        frame.setSize(305,570);
        frame.getContentPane().setLayout(null);
        frame.getContentPane().setBackground(Color.black);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public void addActionEvent(){
        buttonClear.addActionListener(this);
        buttonDelete.addActionListener(this);
        buttonReciprocal.addActionListener(this);
        buttonSquare.addActionListener(this);
        buttonPlus.addActionListener(this);
        buttonMinus.addActionListener(this);
        buttonMul.addActionListener(this);
        buttonSqrt.addActionListener(this);
        buttonDiv.addActionListener(this);
        buttonEqual.addActionListener(this);
        buttonZero.addActionListener(this);
        buttonDot.addActionListener(this);
        buttonThree.addActionListener(this);
        buttonTwo.addActionListener(this);
        buttonOne.addActionListener(this);
        buttonSix.addActionListener(this);
        buttonFive.addActionListener(this);
        buttonFour.addActionListener(this);
        buttonNine.addActionListener(this);
        buttonEighth.addActionListener(this);
        buttonSeven.addActionListener(this);
        buttonNegation.addActionListener(this);
        buttonPercent.addActionListener(this);
        buttonClearEntity.addActionListener(this);
        buttonMemoryAdd.addActionListener(this);
        textMemory.addActionListener(this);
        buttonMemorySubtract.addActionListener(this);
        buttonMemoryRecall.addActionListener(this);
        buttonMemoryClear.addActionListener(this);
    }

    public static void main(String[] args) {
        CalculatorProject calculator = new CalculatorProject();
    }
    @Override
    public void actionPerformed(ActionEvent e){

        Object source = e.getSource();


        if(source == buttonClear){
            label.setText("");
            textField.setText("");
        }else(source == buttonDelete){
         int length = textField.getText().length();
         int number = length-1;
         if(length > 0){

             StringBuilder back = new StringBuilder(textField.getText());
             back.deleteCharAt(number);
             textField.setText(back.toString());
         }
         if(textField.getText().endsWith("")){
             label.setText("");
         }
        }else if(source == buttonZero){
            if(textField.getText().equals("0")){
                return;
            }else{
                textField.setText(textField.getText() + "0");
            }

        }else if(source == buttonOne){
            textField.setText(textField.getText() + "1");
        }else if(source == buttonTwo){
            textField.setText(textField.getText() + "2");
        }else if(source == buttonThree){
            textField.setText(textField.getText() + "3");
        }else if(source == buttonFour){
            textField.setText(textField.getText() + "4");
        }else if(source == buttonFive){
            textField.setText(textField.getText() + "5");
        }else if(source == buttonSix){
            textField.setText(textField.getText() + "6");
        }else if(source == buttonSeven){
            textField.setText(textField.getText() + "7");
        }else if(source == buttonEighth){
            textField.setText(textField.getText() + "8");
        }else if(source == buttonNine){
            textField.setText(textField.getText() + "9");
        }else if (source == buttonDot){
            if (textField.getText().contains(".")){
                return;
            }else {
                 textField.setText(textField.getText() + ".");
            }
        }else if (source == buttonPlus){
            String str = textField.getText();
            num1 = Double.parseDouble(textField.getText());
            calculation = 1;
            textField.setText("");
            label.setText(str + "+");
        }else if (source == buttonMinus){
            String str = textField.getText();
            num1 = Double.parseDouble(textField.getText());
            calculation = 2;
            textField.setText("");
            label.setText(str + "-");
        }else if (source == buttonMul){
            String str = textField.getText();
            num1 = Double.parseDouble(textField.getText());
            calculation = 3;
            textField.setText("");
            label.setText(str + "*");
        }else if (source == buttonDiv){
            String str = textField.getText();
            num1 = Double.parseDouble(textField.getText());
            calculation = 4;
            textField.setText("");
            label.setText(str + "/");
        }else if (source == buttonSquare){
            num1 = Double.parseDouble(textField.getText());
            double square = Math.pow(num1, 2);
            String string = Double.toString(square);
            if (string.endsWith(".0")){
                textField.setText(string.replace(".0", ""));
            }else{
                textField.setText(string);
            }
        }else if (source == buttonSqrt){
            num1 = Double.parseDouble(textField.getText());
            double sqrt = Math.sqrt(num1);
            textField.setText(Double.toString(sqrt));
        }else if(source == buttonEqual){
            num2 = Double.parseDouble(textField.getText());
            switch(calculation){
                case 1:
                    result = num1 + num2;
                    break;
                case 2:
                    result = num1 - num2;
                    break;
                case 3:
                    result = num1 * num2;
                    break;
                case 4:
                    result = num1 / num2;
            }
            if (Double.toString(result).endsWith(".0")){
                textField.setText(Double.toString(result).replace(".0", ""));
            }else{
                textField.setText(Double.toString(result));
            }
            label.setText("");
            num1 = result;

        }else if (source == buttonNegation){
            String currentText = textField.getText();
            if (!currentText.isEmpty() && !currentText.equals("0")) {
            	double currentValue = Double.parseDouble(currentText);
                double negatedValue = -currentValue;
                textField.setText(Double.toString(negatedValue));
            }
        }else if (source == buttonPercent) {
            String currentText = textField.getText();
            if (!currentText.isEmpty() && !currentText.equals("0")) {
                double currentValue = Double.parseDouble(currentText);
                double percentage = currentValue / 100.0;
                textField.setText(Double.toString(percentage));
            }
        }else if (source == buttonClearEntity) {
            textField.setText("");
        }else if (source == buttonMemoryAdd) {
            // Add the current value to memory
            String currentText = textField.getText();
            if (!currentText.isEmpty()) {
                double currentValue = Double.parseDouble(currentText);

                // Get the current value in memory (if any)
                String memoryText = textMemory.getText();
                double memoryValue = memoryText.isEmpty() ? 0 : Double.parseDouble(memoryText);

                // Add the current value to memory
                double newMemoryValue = memoryValue + currentValue;

                // Display the updated memory value in textMemory
                textMemory.setText(Double.toString(newMemoryValue));
            }
        }
        else if (source == buttonMemorySubtract) {
            String currentText = textField.getText();
            if (!currentText.isEmpty()) {
                double currentValue = Double.parseDouble(currentText);

                String memoryText = textMemory.getText();
                double memoryValue = memoryText.isEmpty() ? 0 : Double.parseDouble(memoryText);

                double newMemoryValue = memoryValue - currentValue;

                textMemory.setText(Double.toString(newMemoryValue));
            }
        }else if (source == buttonMemoryRecall) {
            // Recall the value from memory and display it in the calculator's text field
            String memoryText = textMemory.getText();
            if (!memoryText.isEmpty()) {
                textField.setText(memoryText);
            }
        }
        else if (source == buttonMemoryClear) {
            textMemory.setText("");
        }

    }
    public void enable(){
        onRadioButton.setEnabled(false);
        offRadioButton.setEnabled(true);
        buttonClear.setEnabled(true);
        buttonDelete.setEnabled(true);
        buttonReciprocal.setEnabled(true);
        buttonSquare.setEnabled(true);
        buttonPlus.setEnabled(true);
        buttonMinus.setEnabled(true);
        buttonMul.setEnabled(true);
        buttonSqrt.setEnabled(true);
        buttonDiv.setEnabled(true);
        buttonEqual.setEnabled(true);
        buttonZero.setEnabled(true);
        buttonDot.setEnabled(true);
        buttonThree.setEnabled(true);
        buttonTwo.setEnabled(true);
        buttonOne.setEnabled(true);
        buttonSix.setEnabled(true);
        buttonFive.setEnabled(true);
        buttonFour.setEnabled(true);
        buttonNine.setEnabled(true);
        buttonEighth.setEnabled(true);
        buttonSeven.setEnabled(true);
        buttonNegation.setEnabled(true);
        buttonMemoryClear.setEnabled(true);
        buttonMemoryAdd.setEnabled(true);
        buttonMemoryRecall.setEnabled(true);
        buttonMemorySubtract.setEnabled(true);
        buttonPercent.setEnabled(true);
        buttonClearEntity.setEnabled(true);
    }
    public void disable(){

        buttonClear.setEnabled(false);
        buttonDelete.setEnabled(false);
        buttonReciprocal.setEnabled(false);
        buttonSquare.setEnabled(false);
        buttonPlus.setEnabled(false);
        buttonMinus.setEnabled(false);
        buttonMul.setEnabled(false);
        buttonSqrt.setEnabled(false);
        buttonDiv.setEnabled(false);
        buttonEqual.setEnabled(false);
        buttonZero.setEnabled(false);
        buttonDot.setEnabled(false);
        buttonThree.setEnabled(false);
        buttonTwo.setEnabled(false);
        buttonOne.setEnabled(false);
        buttonSix.setEnabled(false);
        buttonFive.setEnabled(false);
        buttonFour.setEnabled(false);
        buttonNine.setEnabled(false);
        buttonEighth.setEnabled(false);
        buttonSeven.setEnabled(false);
        buttonNegation.setEnabled(false);
        buttonMemoryClear.setEnabled(false);
        buttonMemoryAdd.setEnabled(false);
        buttonMemoryRecall.setEnabled(false);
        buttonMemorySubtract.setEnabled(false);
        buttonPercent.setEnabled(false);
        buttonClearEntity.setEnabled(false);
    }
}
