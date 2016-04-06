//
// AppProperties.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** User Application Properties */
public class AppProperties: JSONEncodable {

    public var uid: String?
    public var aid: String?
    public var properties: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["uid"] = self.uid
        nillableDictionary["aid"] = self.aid
        nillableDictionary["properties"] = self.properties
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}