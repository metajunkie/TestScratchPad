//
//  ButtonDisplayView.swift
//  TestScratchPad
//
//  Created by kewal on 2/18/20.
//  Copyright © 2020 DigiDeeds. All rights reserved.
//

import SwiftUI

struct ButtonDisplayView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: MyButton.getAllMyButtons()) var myButtons:FetchedResults<MyButton>
    
    var name:String = ""
    var group:String = ""
    
    var body: some View {
        HStack {
            Button(name){}
            .font(.system(size: 72))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
            .background(Color.orange)
            .foregroundColor(Color.blue)
        }
    }
}

struct ButtonDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDisplayView()
    }
}
