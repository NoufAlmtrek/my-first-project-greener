//
//  MainPage.swift
//  pear
//
//  Created by  noufalmtrek on 27/08/1444 AH.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        ZStack {
            Color("Background")
            .ignoresSafeArea()
            VStack{
                header()
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .padding(.horizontal)
                        .frame(height: 250.0)
                    .foregroundColor(Color("Dgreen"))
                    HStack{
                        Spacer()
                        ZStack{
                            Image("Plant2")
                                .resizable()
                                .frame(width: 170, height: 200)
                                .padding(.leading, -10.0)
                                .padding(.top, 30)
                            
                            Image("nouf")
                                .resizable()
                                .padding(.leading, 42.0)
                                .frame(width: 300.0,height: 250.0)
                        }
                        Spacer()
                        VStack{
                            Text("960 point")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .padding([.leading, .bottom],-14.0)
                            //    .padding([.bottom, .trailing], 1.0)
                                .frame(height: 50.0)
                            Text("Rank 47")
                                .font(.title3)
                                .foregroundColor(Color.green)
                                .padding(.bottom, 191.0)
                              //  Rankes()
                        }
                        .padding(.leading, -38.0)
                        
                   
                    }
                    .padding(.horizontal)
                    .padding([.top, .trailing], 9.0)
                }
                Spacer()
                    .frame(height: 30.0)
                HStack{
                                    Text("Badges")
                                    
                                        .font(.title3)
                                        .padding(.bottom, 25.0)
                                    .padding(.top, 38.0)
                                    .padding(.leading,20)
                                    
                                    
                                    Text("Show More")
                                                        
                                                        
                                                            .foregroundColor(Color.green)
                                                            .multilineTextAlignment(.trailing)
                                                            .padding(.leading, 170.0)
                                                            .padding(.trailing, 30.0)
                                                            .padding(.top, 23.0)
                                                            .onTapGesture {
                                                                //Badges()
                                                            }
                }.padding(.bottom, -20)
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .padding(.horizontal)
                        .frame(height: 200.0)
                    .foregroundColor(Color("Dgreen"))
                    HStack{
                        
                        

                        Badge(image: "Badges1", title: "tree planter", progressCounter: "", description: "u planted so many trees", total: 5, completed: 3)
                        Badge(image: "Badges2", title: "Waste Recycling", progressCounter: "", description: "Waste Reuse", total: 5, completed: 5)
                        Badge(image: "Badges3", title: "Maintaining clean", progressCounter: "", description: "Make the Earth clean", total: 1, completed: 5)

                        
                        
                    }
                }
                Spacer()
                    .frame(height: 140)
                

            }
            
            
        }
        
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage() .environment(\.colorScheme, .dark)
    }
}
