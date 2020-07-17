//
//  CheckInOuts+CoreDataProperties.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//
//

import Foundation
import CoreData




extension CheckInOuts {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CheckInOuts> {
        return NSFetchRequest<CheckInOuts>(entityName: "CheckInOuts")
    }

    @NSManaged public var time: Date?
    @NSManaged public var checkedin: Bool
    @NSManaged public var child: Child?

}
