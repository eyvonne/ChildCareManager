//
//  Child+CoreDataProperties.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/18/20.
//
//

import Foundation
import CoreData


extension Child {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Child> {
        return NSFetchRequest<Child>(entityName: "Child")
    }

    @NSManaged public var age: Float
    @NSManaged public var name: String?
    @NSManaged public var parent1: String?
    @NSManaged public var parent2: String?
    @NSManaged public var parent3: String?
    @NSManaged public var parent4: String?
    @NSManaged public var parent5: String?
    @NSManaged public var checks: NSOrderedSet?
    @NSManaged public var notes: NSSet?

}

// MARK: Generated accessors for checks
extension Child {

    @objc(insertObject:inChecksAtIndex:)
    @NSManaged public func insertIntoChecks(_ value: CheckInOuts, at idx: Int)

    @objc(removeObjectFromChecksAtIndex:)
    @NSManaged public func removeFromChecks(at idx: Int)

    @objc(insertChecks:atIndexes:)
    @NSManaged public func insertIntoChecks(_ values: [CheckInOuts], at indexes: NSIndexSet)

    @objc(removeChecksAtIndexes:)
    @NSManaged public func removeFromChecks(at indexes: NSIndexSet)

    @objc(replaceObjectInChecksAtIndex:withObject:)
    @NSManaged public func replaceChecks(at idx: Int, with value: CheckInOuts)

    @objc(replaceChecksAtIndexes:withChecks:)
    @NSManaged public func replaceChecks(at indexes: NSIndexSet, with values: [CheckInOuts])

    @objc(addChecksObject:)
    @NSManaged public func addToChecks(_ value: CheckInOuts)

    @objc(removeChecksObject:)
    @NSManaged public func removeFromChecks(_ value: CheckInOuts)

    @objc(addChecks:)
    @NSManaged public func addToChecks(_ values: NSOrderedSet)

    @objc(removeChecks:)
    @NSManaged public func removeFromChecks(_ values: NSOrderedSet)

}

// MARK: Generated accessors for notes
extension Child {

    @objc(addNotesObject:)
    @NSManaged public func addToNotes(_ value: Notes)

    @objc(removeNotesObject:)
    @NSManaged public func removeFromNotes(_ value: Notes)

    @objc(addNotes:)
    @NSManaged public func addToNotes(_ values: NSSet)

    @objc(removeNotes:)
    @NSManaged public func removeFromNotes(_ values: NSSet)

}
