package _03_print_and_popups._1_greeter;

import javax.swing.JOptionPane;

public class Greeter {
	public static void main(String[] args) {
		System.out.println("Hello World!");
		String input = JOptionPane.showInputDialog("What is your name?");
		JOptionPane.showMessageDialog(null,"Hello "+input);
	}

}
