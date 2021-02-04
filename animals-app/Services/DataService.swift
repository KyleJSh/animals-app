//
//  DataService.swift
//  animals-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Animals] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Animals]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                
                let animalsData = try decoder.decode([Animals].self, from: data)
                
                for a in animalsData {
                    a.id = UUID()
                }
                return animalsData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Animals]()
    }
}
