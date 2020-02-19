//
//  MyButton.swift
//  TestScratchPad
//
//  Created by kewal on 2/18/20.
//  Copyright © 2020 DigiDeeds. All rights reserved.
//

import Foundation
import CoreData

public class MyButton:NSManagedObject, Identifiable {
    
    @NSManaged public var id:UUID?
    @NSManaged public var name:String?
    @NSManaged public var group:String?
}

extension MyButton {
    static func getAllMyButtons() -> NSFetchRequest<MyButton> {
        let request:NSFetchRequest<MyButton> = MyButton.fetchRequest() as! NSFetchRequest<MyButton>
        
        let sortDescriptor = NSSortDescriptor(key: "group", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
