//
//  ProgressIndicator.swift
//  pear
//
//  Created by  noufalmtrek on 27/08/1444 AH.
//

import SwiftUI

struct ProgressIndicator: View {
    var size:Int
    var completed:Int
    
    var body: some View {
        HStack{
            ForEach(0..<size){ i in
                if(i<completed){
                    if(i != 0){
                                            Rectangle()
                                                .padding(.horizontal, -10.0)
                                                .frame(width: 25, height: 3.401)
                                            .foregroundColor(Color(red: 0.420, green: 0.729, blue: 0.361))}//green lines
                    Circle()
                        .strokeBorder(Color(red: 0.420, green: 0.729, blue: 0.361), lineWidth: 2)
                            .background(Circle().fill(Color(red: 0.267, green: 0.420, blue: 0.239)))
                            .frame(width: 22.0, height: 22.0).zIndex(1)//green circles
                    
                }else{
                    if(i != 0){
                                            Rectangle()
                                                .padding(.horizontal, -10.0)
                                                .frame(width: 25, height: 3.401)
                                            .foregroundColor(Color(red: 0.545, green: 0.565, blue: 0.541))//gray lines
                    }
                    Circle()
                        .strokeBorder(Color(red: 0.545, green: 0.565, blue: 0.541), lineWidth: 2)
                            .background(Circle().fill(Color(red: 0.271, green: 0.286, blue: 0.267)))
                            .frame(width: 22.0, height: 22.0)//gray circles
                }
            }
        }
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator(size: 6, completed: 3)
    }
}
