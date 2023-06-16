package _04_amazing_games._2_dragon_fight;

import java.util.Random;
import javax.swing.JOptionPane;
import javax.swing.ImageIcon;

public class DragonFight {

	public static void main(String[] args) {

		Random ran = new Random();     

		ImageIcon dragon = new ImageIcon("src/_04_amazing_games/_2_dragon_fight/dragonPicture.jpg");
		JOptionPane.showMessageDialog(null, "Defeat the dragon to take its treasure!", "Dragon Fighter", 0, dragon);

		
		int playerHealth = 100;
			
		int dragonHealth = 100;
		
		int playerAttack = 0;
			
		int dragonAttack = 0;
		
		
		while (true) {

			

				
			String a = JOptionPane.showInputDialog("Do you want to attack the dragon with a yell or a kick?");
				
			if (a.equals("yell")) {
				playerAttack=ran.nextInt(10);
			}
				
			if (a.equals("kick")) {
				playerAttack=ran.nextInt(30-20 + 1)+20;
			}
					  
			dragonHealth-=playerAttack;
			
			dragonAttack=ran.nextInt(35);
				
			playerHealth-=dragonAttack;
			

				
			if (playerHealth<=0) {
				playerLost();
			}
			
				
			if (dragonHealth<=0) {
				dragonLost();
			}
			
				
			JOptionPane.showMessageDialog(null,"The dragon has " + dragonHealth + " left.");
			
			
			JOptionPane.showMessageDialog(null,"You did " + playerAttack + " damage to the dragon.");
			JOptionPane.showMessageDialog(null, "You have "+ playerHealth + "left.");
		}

	}

	static void playerLost() {
		
		JOptionPane.showMessageDialog(null, "You have been defeated by the dragon but good try.");

		System.exit(0);   //This code ends the program
	}

	static void dragonLost() {
		
		JOptionPane.showMessageDialog(null, "You have defeated the dragon and got a ton of gold from the bounty, congratulations!");
		System.exit(0);   //This code ends the program
	}

}
