//
//  UserModel.swift
//  ApiCallTesting
//
//  Created by apple on 19/12/2022.
//

import Foundation

//struct usarModel : Codable {
//    let uid : Int?
//    let id : Int?
//    let title : String?
//    let completed : Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case uid = "userId"
//        case id = "id"
//        case title = "title"
//        case completed = "completed"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        uid = try values.decodeIfPresent(Int.self, forKey: .uid)
//        id = try values.decodeIfPresent(Int.self, forKey: .id)
//        title = try values.decodeIfPresent(String.self, forKey: .title)
//        completed = try values.decodeIfPresent(Bool.self, forKey: .completed)
//    }
//
//}
struct usarModel : Codable {
    
    let albumId : Int?
    let id : Int?
    let title : String?
    let url : String?
    let thumbnailUrl : String?
    
    enum CodingKeys: String, CodingKey {
        
        case albumId = "albumId"
        case id = "id"
        case title = "title"
        case url = "url"
        case thumbnailUrl = "thumbnailUrl"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        albumId = try values.decodeIfPresent(Int.self, forKey: .albumId)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        thumbnailUrl = try values.decodeIfPresent(String.self, forKey: .thumbnailUrl)
    }
    
}
