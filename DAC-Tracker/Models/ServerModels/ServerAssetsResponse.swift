//
//  ServerAssetsResponse.swift
//  DAC-Tracker
//
//  Created by Arash K. on 2017-10-19.
//  Copyright © 2017 Arash K. All rights reserved.
//

import Foundation



struct ServerAssetsResponse: Decodable {
  
  let data: ServerAssetsData
  
  private enum CodingKeys: String, CodingKey {
    case data
  }
}

struct ServerAssetsData: Decodable {
  
  let btc: BTC
  let eth: ETH
  let xrp: XRP
  let xlm: XLM
  let etc: ETC
  let ltc: LTC
  let bch: BCH
  let dash: DASH
  
  private enum CodingKeys: String, CodingKey {
    case btc = "BTC", eth = "ETH", xrp = "XRP", xlm = "XLM", etc = "ETC", ltc = "LTC", bch = "BCH", dash = "DASH"
  }
}

struct BTC: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct ETH: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct XRP: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct XLM: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct ETC: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct LTC: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct BCH: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

struct DASH: Decodable {
  
  let name: String
  let symbole: String
  let color: String
  let marketCap: Int
  let twentyFourhVolume: Int
  let availableSupply: Int
  let totalSupply: Int
  let price: [Float]
  
  private enum CodingKeys: String, CodingKey {
    case twentyFourhVolume = "24hVolume", name, symbole, color, marketCap, availableSupply, totalSupply, price
  }
}

