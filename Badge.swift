//
//  Badge.swift
//  pear
//
//  Created by  noufalmtrek on 27/08/1444 AH.
//

import SwiftUI

struct Badge : View {
    @State private var showSheet = false
    var image : String
    var title : String
    var progressCounter : String
    var description : String
    var total : Int
    var completed : Int
    var num = 0
    
    
    
    var body: some View {
        VStack{
            //Badge View in Badge main page
            Image(image)
                .resizable()
                .frame(width: 75, height: 75)
            Text(title)
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            Spacer()
                .frame(height: 8.0)
            Text("\(completed) of \(total)")
                .font(.system(size: 10))
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .frame(width: 100.0)
            //End of Badge View in Badge main page
        }
        .onTapGesture {
            showSheet.toggle()//Badge tapped action
        }.sheet(isPresented: $showSheet) {
                        ZStack{
                Rectangle()
                                .foregroundColor(Color(red: 0.133, green: 0.149, blue: 0.133)).ignoresSafeArea()//sheet color
                VStack{//start of sheet content
                    Spacer()
                    Text("Badge Details")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .padding(.trailing, 170.0)
                    
                    Rectangle()
                        .frame(width: 350, height: 0.5)
                        .foregroundColor(Color.gray)
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Image(image).resizable().frame(width: 275, height: 275)
//                    Image(image)
//                        .frame(width: 100, height: 100)
                    //end of sheet content
                    Text(description)
                        .font(.body)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50.0)
                    ProgressIndicator(size: total, completed: completed+num)
                    Spacer()
                    Button(action: {
                            //action of pressing button
                    //     var num = completed
                        // num += 1
                        }) {
                            Text("Task Completed")
                                .frame(minWidth: 0, maxWidth: 230, minHeight: 0, maxHeight: 15)
                                .font(.system(size: 18))
                                .padding()
                                .foregroundColor(.white)
                                //.overlay(
                                   // RoundedRectangle(cornerRadius: 7)
                                       // .stroke(Color.white, lineWidth: 2)
                            //)
                        }
                        .background(Color(red: 0.420, green: 0.729, blue: 0.361)) // If you have this
                        .cornerRadius(7)
                    Spacer()
//                    Button(/@START_MENU_TOKEN@/"Button"/@END_MENU_TOKEN@/) {
//                        /@START_MENU_TOKEN@//@PLACEHOLDER=Action@/ /@END_MENU_TOKEN@/
//                    }
//                    .buttonStyle(.bordered)
//                    .tint(.green)
//                    .padding(.top, -250)
                    
                }
            }.presentationDetents([.height(650)])//sheet size
        }
    }
}


struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge(image: "", title: "", progressCounter: "", description: "", total: 1, completed: 0)
    }
}
