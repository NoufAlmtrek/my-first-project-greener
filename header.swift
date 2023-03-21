//
//  header.swift
//  pear
//
//  Created by  noufalmtrek on 27/08/1444 AH.
//

import SwiftUI

struct header: View {
    var body: some View {
        VStack {
            ZStack {
                HStack{
                    Image("Plant")
                        .resizable()
                        .frame(width: 55.0, height: 55.0)
                    Text("Haya")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                }
                .background(Color("Dgreen"))
                //   .ignoresSafeArea()
                
            }
            Spacer()
        }
    }
}

struct header_Previews: PreviewProvider {
    static var previews: some View {
        header()
    }
}
