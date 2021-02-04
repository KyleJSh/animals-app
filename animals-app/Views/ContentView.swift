//
//  ContentView.swift
//  animals-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = AnimalsModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                ForEach (model.animals) { m in
                    
                    NavigationLink(
                        destination: AnimalsView(animals:m),
                        label: {
                            VStack {
                                ZStack {
                                    
                                    Image(m.image1)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(5)
                                    
                                }
                            }
                            .padding(.all, 5.0)
                        })
                }
                .navigationBarTitle("Animal Facts")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
