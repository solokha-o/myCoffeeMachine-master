//: Playground - noun: a place where people can play

//
//  MyCoffeeMachine.swift
//  myCoffeeMachine
//
//  Created by Oleksandr Solokha on 11.02.20.
//  Copyright © 2020 Oleksandr Solokha. All rights reserved.
//

import Foundation

class MyCoffeeMachine {
    var water = 0 {
        didSet {
            if water <= 0 {
                water = oldValue
                print("Add water 💦, please!")
            }
        }
    }
    var coffee = 0 {
        didSet {
            if coffee <= 0 {
                coffee = oldValue
                print("Add coffee 🏉, please!")
            }
        }
    }
    var milk = 0 {
        didSet {
            if milk <= 0 {
                milk = oldValue
                print("Add milk 🥛, please!")
            }
        }
    }
    var waste = 0
    
    // add water
    func addWater() -> String {
        water = 750
        print("Water has added to Coffee machine. 💦")
        return "Water has added to Coffee machine. 💦"
    }
    
    // add coffee
    func addCoffee() -> String {
        coffee = 200
        print("Coffee has added to Coffee machine. 🏉")
        return "Coffee has added to Coffee machine. 🏉"
    }
    
    // add milk
    func addMilk() -> String {
        milk = 100
        print("Milk has added to Coffee machine. 🥛")
        return "Milk has added to Coffee machine. 🥛"
    }
    
    // clean waste from coffee machine
    func cleanWaste() -> String {
        waste = 0
        print("Waste has cleaned. 🗑")
        return "Waste has cleaned. 🗑"
    }
    
    
    // make americano
    func makeAmericano() -> String {
        let americano = Drink.americano
        if water < americano.waterNeeded {
            print("Add water 💦, please!")
            return "Add water 💦, please!"
        } else if coffee < americano.coffeeNeeded {
            print("Add coffee 🏉, please!")
            return "Add coffee 🏉, please!"
        } else if milk < americano.milkNeeded {
            print("Add milk 🥛, please!")
            return "Add milk 🥛, please!"
        } else if waste >= 200 {
            print("Clean waste 🗑, please!")
            return "Clean waste 🗑, please!"
        } else {
            water -= americano.waterNeeded
            coffee -= americano.coffeeNeeded
            milk -= americano.milkNeeded
            waste += americano.coffeeNeeded
            print("Please, your americano is ready! ☕️")
            return "Please, your americano is ready! ☕️"
        }
    }
    
    // make espresso
    func makeEspresso() -> String {
        let espresso = Drink.espresso
        if water < espresso.waterNeeded {
            print("Add water 💦, please!")
            return "Add water 💦, please!"
        } else if coffee < espresso.coffeeNeeded {
            print("Add coffee 🏉, please!")
            return "Add coffee 🏉, please!"
        } else if milk < espresso.milkNeeded {
            print("Add milk 🥛, please!")
            return "Add milk 🥛, please!"
        } else if waste >= 200 {
            print("Clean waste 🗑, please!")
            return "Clean waste 🗑, please!"
        } else {
            water -= espresso.waterNeeded
            coffee -= espresso.coffeeNeeded
            milk -= espresso.milkNeeded
            waste += espresso.coffeeNeeded
            print("Please, your espresso is ready! ☕️")
            return "Please, your espresso is ready! ☕️"
        }
    }
    
    // make cappuccino
    func makeCappuccino() -> String {
        let cappuccino = Drink.cappuccino
        if water < cappuccino.waterNeeded {
            print("Add water 💦, please!")
            return "Add water 💦, please!"
        } else if coffee < cappuccino.coffeeNeeded {
            print("Add coffee 🏉, please!")
            return "Add coffee 🏉, please!"
        } else if milk < cappuccino.milkNeeded {
            print("Add milk 🥛, please!")
            return "Add milk 🥛, please!"
        } else if waste >= 200 {
            print("Clean waste 🗑, please!")
            return "Clean waste 🗑, please!"
            
        } else {
            water -= cappuccino.waterNeeded
            coffee -= cappuccino.coffeeNeeded
            milk -= cappuccino.milkNeeded
            waste += cappuccino.coffeeNeeded
            print("Please, your cappuccino is ready! ☕️")
            return "Please, your cappuccino is ready! ☕️"
        }
    }
    // check Ingredients for Coffee machine
    //    func checkIngredients(drink: Drink) -> Bool {
    //        if water < drink.waterNeeded {
    //            print("Add water 💦, please!")
    //            return true
    //        }
    //    }
    //
    // unum Ingredients for coffee drinks
    enum Drink {
        case americano, espresso, cappuccino
        var coffeeNeeded: Int {
            switch self {
            case .americano: return 30
            case .cappuccino: return 25
            case .espresso: return 20
            }
        }
        var waterNeeded: Int {
            switch self {
            case .americano: return 180
            case .cappuccino: return 250
            case .espresso: return 75
            }
        }
        var milkNeeded: Int {
            switch self {
            case .americano: return 10
            case .cappuccino: return 30
            case .espresso: return 0
            }
        }
    }
}
