//
//  NetworkManager.swift
//  DAC-Tracker
//
//  Created by Arash K. on 2017-10-19.
//  Copyright © 2017 Arash K. All rights reserved.
//

import Foundation



enum Routing {
  
  private static let rootURL = "https://api.com/"
  
  case assets
  
  var url: URL {
    switch self {
    case .assets:
      return URL(string: Routing.rootURL)!
    }
  }
  
  var httpMethod: String {
    switch self {
    case .assets: return "GET"
    }
  }
}

class ParadisoService {
  
  private static func sendNetworkRequest(route: Routing,
                                  completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
    
    var request = URLRequest(url: route.url,
                             cachePolicy: .reloadIgnoringCacheData,
                             timeoutInterval: 5000)
    
    request.httpMethod = route.httpMethod
    
    URLSession.shared.dataTask(with: request, completionHandler: completion).resume()
  }
  
  static func assets(completion: @escaping (ServerAssetsResponse?) -> ()) {
    
    let routing = Routing.assets
    
    ParadisoService.sendNetworkRequest(route: routing) { data, response, error in
                        
                        // TODO: refactor the duplicate dispatch calls. for now the convention is
                        //        to always return on the main thread
                        guard error == nil else {
                          print(error!.localizedDescription)
                          DispatchQueue.main.async { completion(nil) }; return
                        }
                        
                        guard let validData = data else {
                          DispatchQueue.main.async { completion(nil) }; return
                        }
                        
                        do {
                          // TODO: make it JUST happen during debug
                          print(String(data: validData, encoding: .utf8))
                          
                          let result = try JSONDecoder().decode(ServerAssetsResponse.self, from: validData)
                          
                          DispatchQueue.main.async {
                            completion(result)
                          }
                        } catch {
                          
                          // TODO: handle each error exception.
                          print("error info: \(error.localizedDescription)")
                          DispatchQueue.main.async { completion(nil) }
                        }
    }
  }
}
