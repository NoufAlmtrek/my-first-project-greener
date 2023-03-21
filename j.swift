//
//  j.swift
//  pear
//
//  Created by  noufalmtrek on 22/08/1444 AH.
//

import Foundation
//
//  ViewB.swift
//  Greener
//
//  Created by Haya alhawas on 21/08/1444 AH.
//

import SwiftUI

struct j: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    
                    ZStack {
                        HStack{
                            Image("Plant")
                                .resizable()
                                .frame(width: 55.0, height: 55.0)
                            Text("Badges")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                          
                            
                        }
                      .background(Color("Dgreen"))
                     
                        
                    }
                    Spacer()
                }
                
                
            }
        }
    }
}

struct j_Previews: PreviewProvider {
    static var previews: some View {
        j()
            .environment(\.colorScheme, .dark)
    }
}
