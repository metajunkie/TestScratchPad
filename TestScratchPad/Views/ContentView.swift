//
//  ContentView.swift
//  TestScratchPad
//
//  Created by kewal on 2/18/20.
//  Copyright © 2020 DigiDeeds. All rights reserved.
//

import SwiftUI
import CoreData


struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: MyButton.getAllMyButtons()) var myButtons:FetchedResults<MyButton>
    
    var name:String = ""
    var group:String = ""
    
    
    
    var body: some View {
        
        HStack {
            
//            DatabaseManagementView()
            
            HStack{
               ForEach(self.myButtons) {myButton in
                ButtonDisplayView(name: myButton.name!, group: myButton.group!)
               
               }
           }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
