//
//  ArtistManager.swift
//  Nanodegree_MusicSafari
//
//  Created by Xuan Yuan (Frank) on 8/19/16.
//  Copyright © 2016 frank-yuan. All rights reserved.
//

import UIKit
import CoreData

class ArtistManager: NSObject {

    static func searchArtist(name:String, context:NSManagedObjectContext, completionHandler: (([String : AnyObject?])->Void)?) {
        
        LastfmAPI.searchArtists(name) { (result, error) in
            let result = AnyObjectHelper.parseWithDefault(result, name: Constants.LastfmParameterArtist.ResultKey, defaultValue: NSArray())
            
            context.performBlock{
                CoreDataHelper.syncCoreData(String(Artist.self), indexNameOfManagedObject: "id", responseArray: result, indexNameOfResponse: Constants.LastfmResponseKeys.ID, context: context) { keyvalue in
                    if let completionHandler = completionHandler {
                        completionHandler(keyvalue)
                    }
                }
            }
        }
        
    }
    
}
