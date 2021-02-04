//
//  AnimalsView.swift
//  animals-app
//
//  Created by Kyle Sherrington on 2021-02-04.
//

import SwiftUI

struct AnimalsView: View {
    
    var animals:Animals
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Image(animals.image2)
                    .resizable()
                    .scaledToFit()
                
                VStack (alignment: .leading) {
                    
                    Text(animals.family)
                        .font(.headline)
                    
                    Divider()
                    
                    ForEach(animals.facts, id:\.self) { f in
                        Text("• " + f)
                            .padding(.bottom)
                            .font(.subheadline)
                    }
                }
                .padding()
            }
        }
    }
}

struct AnimalsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = AnimalsModel()
        AnimalsView(animals: model.animals[0])
    }
}
