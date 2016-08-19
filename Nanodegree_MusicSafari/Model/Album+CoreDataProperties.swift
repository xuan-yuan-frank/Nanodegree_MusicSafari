//
//  Album+CoreDataProperties.swift
//  Nanodegree_MusicSafari
//
//  Created by Xuan Yuan (Frank) on 8/17/16.
//  Copyright © 2016 frank-yuan. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Album {

    @NSManaged var id: String?
    @NSManaged var releasedDate: NSDate?
    @NSManaged var imageMedium: String?
    @NSManaged var imageLarge: String?
    @NSManaged var rArtist: NSManagedObject?
    @NSManaged var rTracks: NSSet?

}
