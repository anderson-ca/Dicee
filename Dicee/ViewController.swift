//
//  ViewController.swift
//  Dicee
//
//  Created by Anderson Cardoso on 2/5/18.
//  Copyright © 2018 Anderson Cardoso. All rights reserved.
//


// import functionality from UIKit module
import UIKit

// ViewController class of annotated type UIViewController.
class ViewController: UIViewController {
    
    //////////////////////////////////////
    //////////////////////////////////////
    //////////////////////////////////////
    // variables representing random values to populate left and right dice.
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // left dice.
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // right dice.
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // array of Strings
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    //////////////////////////////////////
    //////////////////////////////////////
    //////////////////////////////////////
    // function the gets called whent he screen loads up.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //////////////////////////////////////
    //////////////////////////////////////
    //////////////////////////////////////
    
    
    // roll dice button. -> this button will function as
    // a event handler. As the user interacts with this element,
    // the code inside the block will be executed.
    @IBAction func UIButton(_ sender: UIButton) {
        updateDiceImage()
    }
    
    // method
    func updateDiceImage() {
        // generate random number between 0 and 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //programmatically change properties of elements in the display.
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}















