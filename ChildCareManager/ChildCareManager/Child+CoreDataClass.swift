//
//  Child+CoreDataClass.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//
//

import Foundation
import CoreData


public class Child: NSManagedObject, Identifiable {
    @NSManaged var name:String
    @NSManaged var age:Float
}
