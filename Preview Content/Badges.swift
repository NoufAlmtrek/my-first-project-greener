//
//  Badges.swift
//  pear
//
//  Created by  noufalmtrek on 22/08/1444 AH.
//

//
//  ViewB.swift
//  Greener
//
//  Created by Haya alhawas on 21/08/1444 AH.
//

import SwiftUI

struct Badges: View {
    var image: String
    var title : String
        var progressCounter : String
    
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
                    
                    Image(image)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                Text(title)
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                    .frame(height: 10.0)
                                Text(progressCounter)
                                    .font(.system(size: 12))
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 120.0)
                }
                
                
            }
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
