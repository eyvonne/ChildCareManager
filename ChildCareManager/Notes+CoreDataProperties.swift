//
//  Notes+CoreDataProperties.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/18/20.
//
//

import Foundation
import CoreData


extension Notes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notes> {
        return NSFetchRequest<Notes>(entityName: "Notes")
    }

    @NSManaged public var note: String?
    @NSManaged public var time: Date?
    @NSManaged public var child: NSSet?

}

// MARK: Generated accessors for child
extension Notes {

    @objc(addChildObject:)
    @NSManaged public func addToChild(_ value: Child)

    @objc(removeChildObject:)
    @NSManaged public func removeFromChild(_ value: Child)

    @objc(addChild:)
    @NSManaged public func addToChild(_ values: NSSet)

    @objc(removeChild:)
    @NSManaged public func removeFromChild(_ values: NSSet)

}
