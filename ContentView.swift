//
//  ContentView.swift
//  pear
//
//  Created by  noufalmtrek on 20/08/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                        Color("Background")
                            .ignoresSafeArea()

                        
                            TabView{
                                
                                
//                                    .tabItem(){
//                                        Image(systemName: "homekit")
//                                        Text("Explore")
//
//                                    }
                                  
                                Badges(image: "", title: "", progressCounter: "")
                                
                                    .tabItem(){
                                        Image(systemName: "checkerboard.shield")
                                        Text("Badges")
                                          
                                    }
                                Events()
                                    .tabItem(){
                                        Image(systemName: "person.line.dotted.person")
                                        Text("Events")
                                          
                                    }
                            }
                       
                          
                        }
            
        }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme,.dark)
    }
}


 
