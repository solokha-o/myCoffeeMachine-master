//
//  ViewController.swift
//  myCoffeeMachine
//
//  Created by Oleksandr Solokha on 11.02.20.
//  Copyright © 2020 Oleksandr Solokha. All rights reserved.
//

import UIKit

class MyCoffeeMachineViewController: UIViewController {
    
    var myCoffeeMachine = MyCoffeeMachine()
    
    @IBOutlet weak var statusLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusLable.layer.cornerRadius = 8
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
// create buttom for MyCoffeeMachineViewController
    @IBAction func addWater(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.addWater()
    }
    @IBAction func addCoffee(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.addCoffee()

    }
    @IBAction func addMilk(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.addMilk()

    }
    @IBAction func cleanWaste(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.cleanWaste()
    }
    @IBAction func makeAmericano(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.makeAmericano()
    }
    @IBAction func makeEspresso(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.makeEspresso()
    }
    @IBAction func makeCappuccino(_ sender: UIButton) {
        statusLable.text = myCoffeeMachine.makeCappuccino()
    }
    
    
}

