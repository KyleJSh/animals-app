//
//  AnimalsModel.swift
//  animals-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import Foundation

class AnimalsModel:ObservableObject {
    
    @Published var animals = [Animals]()
    
    init() {
        
        self.animals = DataService.getLocalData()
    }
}
