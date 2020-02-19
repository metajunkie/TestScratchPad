//
//  ButtonEditView.swift
//  TestScratchPad
//
//  Created by kewal on 2/18/20.
//  Copyright © 2020 DigiDeeds. All rights reserved.
//

import SwiftUI

struct ButtonEditView: View {
    
    var name:String = ""
    var group:String = ""
    
    var body: some View {
         HStack{
                   VStack(alignment: .leading){
                       Text("Button Name:  \(name)")
                           .font(.headline)
                        Text(group)
                            .font(.headline)
                       
                   }
          }
    }
}

struct ButtonEditView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonEditView()
    }
}
