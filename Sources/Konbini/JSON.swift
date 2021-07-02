//
//  JSON.swift
//  Konbini
//
//  Created by Nico Verbruggen on 02/07/2021.
//

import Foundation

class JSON {
    public static func encode<T: Encodable>(_ data: T) -> String {
        let encodedData = try! JSONEncoder().encode(data)
        return String(data: encodedData, encoding: .utf8)!
    }
        
    public static func decode<T: Decodable>(_ json: String, type: T.Type) -> T {
        return try! JSONDecoder().decode(T.self, from: json.data(using: .utf8)!)
    }
}
