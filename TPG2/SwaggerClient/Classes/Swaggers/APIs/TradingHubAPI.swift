//
// TradingHubAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class TradingHubAPI {
    /**

     - parameter groupName: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hubsTradingHubAddToGroupPost(groupName: [String]? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        hubsTradingHubAddToGroupPostWithRequestBuilder(groupName: groupName).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /hubs/TradingHub/AddToGroup
     - 

     - :
       - type: http
       - name: Bearer
     - parameter groupName: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func hubsTradingHubAddToGroupPostWithRequestBuilder(groupName: [String]? = nil) -> RequestBuilder<Void> {
        let path = "/hubs/TradingHub/AddToGroup"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "groupName": groupName
        ])


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter chartsModel: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hubsTradingHubGetChartsPost(chartsModel: GetChartsModel? = nil, completion: @escaping ((_ data: [ChartCandle]?,_ error: Error?) -> Void)) {
        hubsTradingHubGetChartsPostWithRequestBuilder(chartsModel: chartsModel).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /hubs/TradingHub/GetCharts
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example=[ {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "volume" : 3,
  "closeAsk" : 2.3021358869347655,
  "openBid" : 0.8008281904610115,
  "closeBid" : 6.027456183070403,
  "lowBid" : 5.962133916683182,
  "highAsk" : 7.061401241503109,
  "highBid" : 1.4658129805029452,
  "openAsk" : 5.637376656633329,
  "lowAsk" : 9.301444243932576
}, {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "volume" : 3,
  "closeAsk" : 2.3021358869347655,
  "openBid" : 0.8008281904610115,
  "closeBid" : 6.027456183070403,
  "lowBid" : 5.962133916683182,
  "highAsk" : 7.061401241503109,
  "highBid" : 1.4658129805029452,
  "openAsk" : 5.637376656633329,
  "lowAsk" : 9.301444243932576
} ]}]
     - parameter chartsModel: (query)  (optional)

     - returns: RequestBuilder<[ChartCandle]> 
     */
    open class func hubsTradingHubGetChartsPostWithRequestBuilder(chartsModel: GetChartsModel? = nil) -> RequestBuilder<[ChartCandle]> {
        let path = "/hubs/TradingHub/GetCharts"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "chartsModel": chartsModel
        ])


        let requestBuilder: RequestBuilder<[ChartCandle]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hubsTradingHubOnConnectedAsyncPost(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        hubsTradingHubOnConnectedAsyncPostWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /hubs/TradingHub/OnConnectedAsync
     - 

     - :
       - type: http
       - name: Bearer

     - returns: RequestBuilder<Void> 
     */
    open class func hubsTradingHubOnConnectedAsyncPostWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/hubs/TradingHub/OnConnectedAsync"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter exception: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hubsTradingHubOnDisconnectedAsyncPost(exception: Exception? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        hubsTradingHubOnDisconnectedAsyncPostWithRequestBuilder(exception: exception).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /hubs/TradingHub/OnDisconnectedAsync
     - 

     - :
       - type: http
       - name: Bearer
     - parameter exception: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func hubsTradingHubOnDisconnectedAsyncPostWithRequestBuilder(exception: Exception? = nil) -> RequestBuilder<Void> {
        let path = "/hubs/TradingHub/OnDisconnectedAsync"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "exception": exception
        ])


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hubsTradingHubPreviousDayLatestPost(completion: @escaping ((_ data: [QuoteViewModel]?,_ error: Error?) -> Void)) {
        hubsTradingHubPreviousDayLatestPostWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /hubs/TradingHub/PreviousDayLatest
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example=[ {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "symbol" : "symbol",
  "ask" : 0.8008281904610115,
  "bid" : 6.027456183070403
}, {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "symbol" : "symbol",
  "ask" : 0.8008281904610115,
  "bid" : 6.027456183070403
} ]}]

     - returns: RequestBuilder<[QuoteViewModel]> 
     */
    open class func hubsTradingHubPreviousDayLatestPostWithRequestBuilder() -> RequestBuilder<[QuoteViewModel]> {
        let path = "/hubs/TradingHub/PreviousDayLatest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[QuoteViewModel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter groupName: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hubsTradingHubRemoveFromGroupPost(groupName: [String]? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        hubsTradingHubRemoveFromGroupPostWithRequestBuilder(groupName: groupName).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /hubs/TradingHub/RemoveFromGroup
     - 

     - :
       - type: http
       - name: Bearer
     - parameter groupName: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func hubsTradingHubRemoveFromGroupPostWithRequestBuilder(groupName: [String]? = nil) -> RequestBuilder<Void> {
        let path = "/hubs/TradingHub/RemoveFromGroup"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "groupName": groupName
        ])


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
