//
//  Model.swift
//  Chandoor_JunkFoodTracker
//
//  Created by student on 3/7/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation


struct FoodData {
    var Name : String
    var Calories : Double
    var Tally : Int
}
    

class FoodRecorder {
    
    var Foods:[FoodData]
    
    
    init(){
        self.Foods = []
          }
    func loadData(){
        
        let Popcorn = FoodData(Name: "Popcorn", Calories: 106, Tally: 0)
        let Coke = FoodData(Name: "Coke", Calories: 140, Tally: 0)
        let PotatoChips = FoodData(Name: "PotatoChips", Calories: 152, Tally: 0)
        Foods.append(contentsOf: [Popcorn,Coke,PotatoChips])
        
    }
    
    func increaseTally(forItem i:Int){
        self.Foods[i].Tally += 1
    }
    
    func getCalories(forItime i:Int) -> Int{
        return Int(self.Foods[i].Calories) * self.Foods[i].Tally
    }
    
    func report(forItem i:Int) -> String{
        return "The calories consumed for \( self.Foods[i].Name ) is  \(self.getCalories(forItime: i))"
    }

    
    func totalCalories() -> Int{
        var result = 0
        for v in 0...2{
            result = result + self.getCalories(forItime: v)
        }
        return result
    }
    
    func combinedReport() -> String {
        var itemResults = ""
        for v in 0 ..< 3 {
            print(v)
            itemResults = itemResults + self.report(forItem: v) + "\n"
        }
        itemResults = itemResults + "Total calories consumed \(self.totalCalories())"
        print(itemResults)
        return itemResults
    }
    
    func reset(){
        for v in 0..<3 {
            self.Foods[v].Tally = 0
        }
    }
}

