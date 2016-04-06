//
// TagsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit



public class TagsAPI: APIBase {
    /**
     
     Get all tags of categories
     
     - parameter categories: (query) Comma separated list of categories.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTagsByCategories(categories categories: String?, completion: ((data: TagsEnvelope?, error: ErrorType?) -> Void)) {
        getTagsByCategoriesWithRequestBuilder(categories: categories).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Get all tags of categories
     
     - parameter categories: (query) Comma separated list of categories.
     - returns: Promise<TagsEnvelope>
     */
    public class func getTagsByCategories(categories categories: String?) -> Promise<TagsEnvelope> {
        let deferred = Promise<TagsEnvelope>.pendingPromise()
        getTagsByCategories(categories: categories) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Get all tags of categories
     
     - GET /tags
     - Get all tags related to the list of categories
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "tags" : [ {
      "isCategory" : true,
      "name" : "aeiou"
    } ]
  }
}}]
     
     - parameter categories: (query) Comma separated list of categories.

     - returns: RequestBuilder<TagsEnvelope> 
     */
    public class func getTagsByCategoriesWithRequestBuilder(categories categories: String?) -> RequestBuilder<TagsEnvelope> {
        let path = "/tags"
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "categories": categories
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<TagsEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get all categories
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTagCategories(completion: ((data: TagsEnvelope?, error: ErrorType?) -> Void)) {
        getTagCategoriesWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Get all categories
     
     - returns: Promise<TagsEnvelope>
     */
    public class func getTagCategories() -> Promise<TagsEnvelope> {
        let deferred = Promise<TagsEnvelope>.pendingPromise()
        getTagCategories() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Get all categories
     
     - GET /tags/categories
     - Get all tags marked as categories
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "tags" : [ {
      "isCategory" : true,
      "name" : "aeiou"
    } ]
  }
}}]

     - returns: RequestBuilder<TagsEnvelope> 
     */
    public class func getTagCategoriesWithRequestBuilder() -> RequestBuilder<TagsEnvelope> {
        let path = "/tags/categories"
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<TagsEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get tag suggestions
     
     - parameter entityType: (query) Entity type name.
     - parameter tags: (query) Comma separated list of tags.
     - parameter name: (query) Name of tags used for type ahead.
     - parameter count: (query) Number of results to return. Max 10.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTagSuggestions(entityType entityType: String?, tags: String?, name: String?, count: Int?, completion: ((data: TagsEnvelope?, error: ErrorType?) -> Void)) {
        getTagSuggestionsWithRequestBuilder(entityType: entityType, tags: tags, name: name, count: count).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Get tag suggestions
     
     - parameter entityType: (query) Entity type name.
     - parameter tags: (query) Comma separated list of tags.
     - parameter name: (query) Name of tags used for type ahead.
     - parameter count: (query) Number of results to return. Max 10.
     - returns: Promise<TagsEnvelope>
     */
    public class func getTagSuggestions(entityType entityType: String?, tags: String?, name: String?, count: Int?) -> Promise<TagsEnvelope> {
        let deferred = Promise<TagsEnvelope>.pendingPromise()
        getTagSuggestions(entityType: entityType, tags: tags, name: name, count: count) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Get tag suggestions
     
     - GET /tags/suggestions
     - Get tag suggestions for applications, device types that have been most used with a group of tags.
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "tags" : [ {
      "isCategory" : true,
      "name" : "aeiou"
    } ]
  }
}}]
     
     - parameter entityType: (query) Entity type name.
     - parameter tags: (query) Comma separated list of tags.
     - parameter name: (query) Name of tags used for type ahead.
     - parameter count: (query) Number of results to return. Max 10.

     - returns: RequestBuilder<TagsEnvelope> 
     */
    public class func getTagSuggestionsWithRequestBuilder(entityType entityType: String?, tags: String?, name: String?, count: Int?) -> RequestBuilder<TagsEnvelope> {
        let path = "/tags/suggestions"
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "entity_type": entityType,
            "tags": tags,
            "name": name,
            "count": count
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<TagsEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
