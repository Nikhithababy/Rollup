//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    
          
        
        var dice1Sum = 0
        var dice2Sum = 0
        let t1:Bool = false
        let t2:Bool = false
    
     
       
    @IBAction func Roll(_ sender: UIButton) {
        
      
        
         let diceArray = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]
        var l1 = Int.random(in: 0...5)
        dice1Sum = dice1Sum + l1
        diceImageView1.image = diceArray[l1]
        var l2 = Int.random(in: 0...5)
        dice2Sum = dice2Sum + l2
        diceImageView2.image = diceArray[l2]
        
        
        
        if(dice1Sum > dice2Sum)
        {
            print("User1wins")
        }
        else
        {
            print("User2Wins")
        }
        
         
    }

}
