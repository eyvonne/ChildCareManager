//
//  Child+CoreDataProperties.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//
//

import Foundation
import CoreData


extension Child {
    
    static func getAllKids() -> NSFetchRequest<Child> {
        let request:NSFetchRequest<Child> = Child.fetchRequest() as! NSFetchRequest<Child>
        
        let sortDescriptor = NSSortDescriptor(key:"age", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }

}
