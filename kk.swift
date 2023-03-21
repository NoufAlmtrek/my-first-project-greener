//
//  Badge.swift
//  pear
//
//  Created by  noufalmtrek on 22/08/1444 AH.
//

import SwiftUI

struct kk: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack(alignment: .trailing) {
                
                HStack{
                    Image("Plant")
                        .resizable()
                        .frame(width: 55.0, height: 55.0)
                    
                    Text("Haya")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    
                }
                .padding([.top, .leading], 57.0)
                .background(Color("Dgreen"))
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 12)
                        .padding(.horizontal, 46.0)
                        .frame(width: 450.0, height: 250.0)
                        .foregroundColor(Color("Dgreen"))
                        .padding(.top, -70)
                    VStack {
                        Text("960 point")
                        //navigation link
                            .font(.title3)
                        
                            .foregroundColor(Color.white)
                            .padding(.trailing, 5.0)
                        
                        
                        
                        Text("Rank 47")
                        
                            .font(.title3)
                            .foregroundColor(Color.green)
                            .padding(.bottom, 5.0)
                    }
                    
                    .padding(.bottom, 230)
                    .padding(.leading, 263.0)
                    .padding(.trailing, 30)
                    
                    Image("Plant2")
                        .resizable()
                    
                        .padding([.top, .bottom, .trailing], 140.0)
                        .frame(width: 300, height: 500)
                    
                    Image("nouf")
                        .resizable()
                    // .padding(.bottom, 61.0)
                        .padding([.bottom, .trailing], 105.0)
                        .frame(width: 420,height: 420.0)
                    
                    
                 //   Spacer()
                    
                    
                }
                
                
                    HStack{
                                        Text("Badges")
                                        
                                            .font(.title3)
                                            .padding([.leading, .bottom], 25.0)
                                        .padding(.top, 38.0)
                                        Text("Show More")
                                                            
                                                            
                                                                .foregroundColor(Color.green)
                                                                .multilineTextAlignment(.trailing)
                                                                .padding(.leading, 200.0)
                                                                .padding(.trailing, 50)
                                                                .padding(.top, 15)
                    }
                    ZStack{
                                        RoundedRectangle(cornerRadius: 12)
                                            .padding([.leading, .bottom, .trailing], 46.0)
                                            .frame(width: 450.0, height: 200.0)
                                            .foregroundColor(Color("Dgreen"))
                    }
                    
                
                
                
                
                
                
                
                
                
                
            }
        }//z
    }
    
    struct Badge_Previews: PreviewProvider {
        static var previews: some View {
            kk()  .environment(\.colorScheme, .dark)
        }
    }
    
}
