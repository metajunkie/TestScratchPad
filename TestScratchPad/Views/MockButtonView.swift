//
//  MockButtonView.swift
//  TestScratchPad
//
//  Created by kewal on 2/18/20.
//  Copyright © 2020 DigiDeeds. All rights reserved.
//

import SwiftUI

struct MockButtonView: View {
    
    
    var options = ["Sausage", "Eggs", "Pancakes", "Toast", "Garlic Toast", "Soda", "Water", "Coffee", "Tea", "Candy", "Sugar", "Plants", "Potatoes"]
    
    @State var buttonOne = 0
    @State var buttonTwo = 1
    @State var buttonThree = 2
    @State var buttonFour = 3
    @State var buttonFive = 4
    @State var buttonSix = 5
    
    var body: some View {
        VStack {
            HStack {
                                     Button(options[buttonOne]){}
                                         .font(.system(size: 72))
                                         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                                         .background(Color.yellow)
                                         .foregroundColor(Color.blue)
                                     Button(options[buttonTwo]){}
                                         .font(.system(size: 72))
                                         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                                         .background(Color.orange)
                                         .foregroundColor(Color.blue)
                                     Button(options[buttonThree]){}
                                         .font(.system(size: 72))
                                         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                                         .background(Color.yellow)
                                         .foregroundColor(Color.blue)
                                     
                                 }
                     
                                 HStack {
                                     Button(options[buttonFour]){}
                                         .font(.system(size: 72))
                                         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                                         .background(Color.orange)
                                         .foregroundColor(Color.blue)
                                     Button(options[buttonFive]){}
                                         .font(.system(size: 72))
                                         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                                         .background(Color.yellow)
                                         .foregroundColor(Color.blue)
                                     Button(options[buttonSix]){}
                                         .font(.system(size: 72))
                                         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                                         .background(Color.orange)
                                         .foregroundColor(Color.blue)
                                     
                                 }
        }
    }
}

struct MockButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MockButtonView()
    }
}
