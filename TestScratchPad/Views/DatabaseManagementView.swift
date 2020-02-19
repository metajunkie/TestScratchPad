//
//  DatabaseManagementView.swift
//  TestScratchPad
//
//  Created by kewal on 2/18/20.
//  Copyright © 2020 DigiDeeds. All rights reserved.
//

import SwiftUI

struct DatabaseManagementView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: MyButton.getAllMyButtons()) var myButtons:FetchedResults<MyButton>
    
    @State private var newVoiceButtonName = ""
    @State private var newVoiceButtonGroup = ""
    
    
    func deleteButtons(at offsets: IndexSet) {
        for offset in offsets {
            let button = myButtons[offset]
            managedObjectContext.delete(button)
        }
        try? managedObjectContext.save()
        
    }
    
    var body: some View {
        NavigationView{
                    List {
                        Section(header: Text("New Button: ")){
                            VStack{
                                TextField("New button name", text: self.$newVoiceButtonName)
                                TextField("group: ", text: self.$newVoiceButtonGroup)
                                
                                Button(action: {
                                    let myButton = MyButton(context: self.managedObjectContext)
                                    myButton.id = UUID()
                                    myButton.name = self.newVoiceButtonName
                                    myButton.group = self.newVoiceButtonGroup
                                    
                                    do {
                                        try self.managedObjectContext.save()
                                        
                                    }catch{
                                        print(error)
                                    }
                                    
                                    self.newVoiceButtonName = ""
                                    self.newVoiceButtonGroup = ""
                                    
                                }){
                                    Image(systemName: "plus.circle.fill")
                                        .foregroundColor(.green)
                                        .imageScale(.large)
                                    
                                }
                            }
                        }.font(.headline)
        // buttons displayed here:
                        Section(header: Text("Buttons in Database: ")) {
                            ForEach(self.myButtons) {myButton in
                                ButtonEditView(name: myButton.name!, group: myButton.group!)
        // delete here:
                            }.onDelete(perform: deleteButtons)
                        }
                        
                    }
                    .navigationBarTitle(Text("My Buttons"))
                    .navigationBarItems(trailing: EditButton())
                }
    }
}

struct DatabaseManagementView_Previews: PreviewProvider {
    static var previews: some View {
        DatabaseManagementView()
    }
}
