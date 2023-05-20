package _03_print_and_popups._4_quiz_game;

import javax.swing.JOptionPane;

public class QuizGame {
	public static void main(String[] args) {
		
		// Create a variable to hold the user's score. Set it equal to zero. 
		int score = 0;
		// ASK A QUESTION AND CHECK THE ANSWER
		String q = JOptionPane.showInputDialog("What is 2 plus 2?");
				if(q.equals("4")) {
					JOptionPane.showMessageDialog(null,"You are correct!");
					score += 1;
				}else {
					JOptionPane.showMessageDialog(null, "That was not the correct answer.");
				}
				// 2.  Ask the user a question 
				
				// 3.  Use an if statement to check if their answer is correct
				
				// 4.  if the user's answer was correct, add one to their score 
		String a = JOptionPane.showInputDialog("What is 9/3?");
		if(a.equals("3")) {
			JOptionPane.showMessageDialog(null, "You are correct!");
			score += 1;
		}else {
			JOptionPane.showMessageDialog(null, "That was not the correct answer");
			score -= 1;
		}
	
		// MAKE MORE QUESTIONS. Ask more questions by repeating the above 
				// Option: Subtract a point from their score for a wrong answer
		JOptionPane.showMessageDialog(null, "You got "+score+" out of 2, congratulations!.");
		
		// After all the questions have been asked, tell the user their final score 
		
	}
}
