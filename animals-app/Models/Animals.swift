//
//  Animals.swift
//  animals-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import Foundation

class Animals: Identifiable, Decodable {
    
    var id:UUID?
    var title:String
    var image1:String
    var image2:String
    var image3:String
    var family:String
    var facts:[String]
}
