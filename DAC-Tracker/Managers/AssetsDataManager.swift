//
//  AssetsDataManager.swift
//  DAC-Tracker
//
//  Created by Arash K. on 2017-10-19.
//  Copyright © 2017 Arash K. All rights reserved.
//

import Foundation


class AssetsDataManager {
  
  static var shared: AssetsDataManager = AssetsDataManager()
  private init() {}
  
  private var cached: ServerAssetsData?
  
  // MARK: API
  
  /**
   Fetch a new Asset Data from server, updates and updates the cached value, as well
   as locally stored value
   
   - Parameter setupBlock: the block to setup the properties of the new object
   - Parameter completion: block than returns the newly created object
   */
  private func syncWithServer() {}
}
