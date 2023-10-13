//
//  question.swift
//  chooseYourAns
//
//  Created by Amr Abdaldayem on 26/06/2022.
//

import Foundation
struct Story {
    
    var title       :String
    var choice1     :String
    var choice2     :String
    
    var choice1Destination : Int
    var choice2Destination : Int
    
   
    
    init(title:String , choice1:String, choice1Destination :Int, choice2:String, choice2Destination: Int) {
        self.title      = title
        self.choice1    = choice1
        self.choice2    = choice2
        self.choice1Destination = choice1Destination
        self.choice2Destination = choice2Destination
    }
    
    func getChoice1() -> String {
        return self.choice1
    }
    func getChoice2() -> String {
        return self.choice2
    }
    func getTitle() -> String {
        return self.title
    }
    
    
    
}
