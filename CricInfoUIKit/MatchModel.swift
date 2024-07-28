//
//  MatchModel.swift
//  CricInfoUIKit
//
//  Created by Mohd Kashif on 28/07/24.
//

import Foundation

struct MatchResponse:Codable{
    var data:[MatchesList]
}

struct MatchesList:Codable,Identifiable{
    let id:String
    let dateTimeGMT:String?
    let matchType:String?
    let status:String?
    let ms:String?
    let t1:String?
    let t2:String?
    let t1s:String?
    let t2s:String?
    let t1img:String?
    let t2img:String?
    let series:String?
}
