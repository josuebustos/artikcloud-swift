//
// MessageOut.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Message received by a WebSocket. */
public class MessageOut: JSONEncodable {

    /** Message ID. */
    public var mid: String?
    /** User ID. */
    public var uid: String?
    /** Source Device Type ID. */
    public var sdtid: String?
    /** Created Timestamp (past, present or future). Defaults to current time if not provided. */
    public var cts: Int?
    /** Manifest Version. */
    public var mv: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["mid"] = self.mid
        nillableDictionary["uid"] = self.uid
        nillableDictionary["sdtid"] = self.sdtid
        nillableDictionary["cts"] = self.cts
        nillableDictionary["mv"] = self.mv
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
