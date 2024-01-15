//
// TradingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class TradingAPI {
    /**

     - parameter symbol: (query)  (optional)
     - parameter period: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingChartsGet(symbol: String? = nil, period: Int? = nil, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping ((_ data: [ChartCandle]?,_ error: Error?) -> Void)) {
        apiTradingChartsGetWithRequestBuilder(symbol: symbol, period: period, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/Trading/charts
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
     - parameter symbol: (query)  (optional)
     - parameter period: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)

     - returns: RequestBuilder<[ChartCandle]> 
     */
    open class func apiTradingChartsGetWithRequestBuilder(symbol: String? = nil, period: Int? = nil, startDate: Date? = nil, endDate: Date? = nil) -> RequestBuilder<[ChartCandle]> {
        let path = "/api/Trading/charts"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "Symbol": symbol, 
                        "Period": period?.encodeToJSON(), 
                        "StartDate": startDate?.encodeToJSON(), 
                        "EndDate": endDate?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[ChartCandle]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter accountId: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingDealHistoryGet(accountId: Int64? = nil, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping ((_ data: DealIEnumerableBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingDealHistoryGetWithRequestBuilder(accountId: accountId, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/Trading/deal/history
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : [ {
    "isBuy" : true,
    "tradeVolume" : 9.369310271410669,
    "createdIpAddress" : "createdIpAddress",
    "positionIpAddress" : "positionIpAddress",
    "reason" : 5,
    "symbol" : "symbol",
    "orderId" : 1,
    "timeUpdate" : "2000-01-23T04:56:07.000+00:00",
    "bonusSpent" : 3.5571952270680973,
    "marketAsk" : 8.762042012749001,
    "profitRaw" : 1.4894159098541704,
    "priceGateway" : 4.965218492984954,
    "price" : 9.301444243932576,
    "volumeClosed" : 9.965781217890562,
    "operationId" : "operationId",
    "contractSize" : 7,
    "commission" : 7.386281948385884,
    "priceSL" : 7.457744773683766,
    "id" : 0,
    "profit" : 3.616076749251911,
    "pricePosition" : 6.84685269835264,
    "symbolDisplayName" : "symbolDisplayName",
    "rateMargin" : 1.0246457001441578,
    "margin" : 4.145608029883936,
    "swap" : 2.027123023002322,
    "currentBalance" : 9.018348186070783,
    "timePosition" : "2000-01-23T04:56:07.000+00:00",
    "externalId" : "externalId",
    "volume" : 5.025004791520295,
    "accountId" : 6,
    "entry" : 5,
    "positionId" : 6,
    "marketBid" : 6.683562403749608,
    "digits" : 2,
    "rateProfit" : 1.2315135367772556,
    "comment" : "comment",
    "time" : "2000-01-23T04:56:07.000+00:00",
    "priceTP" : 1.1730742509559433,
    "gateway" : "gateway"
  }, {
    "isBuy" : true,
    "tradeVolume" : 9.369310271410669,
    "createdIpAddress" : "createdIpAddress",
    "positionIpAddress" : "positionIpAddress",
    "reason" : 5,
    "symbol" : "symbol",
    "orderId" : 1,
    "timeUpdate" : "2000-01-23T04:56:07.000+00:00",
    "bonusSpent" : 3.5571952270680973,
    "marketAsk" : 8.762042012749001,
    "profitRaw" : 1.4894159098541704,
    "priceGateway" : 4.965218492984954,
    "price" : 9.301444243932576,
    "volumeClosed" : 9.965781217890562,
    "operationId" : "operationId",
    "contractSize" : 7,
    "commission" : 7.386281948385884,
    "priceSL" : 7.457744773683766,
    "id" : 0,
    "profit" : 3.616076749251911,
    "pricePosition" : 6.84685269835264,
    "symbolDisplayName" : "symbolDisplayName",
    "rateMargin" : 1.0246457001441578,
    "margin" : 4.145608029883936,
    "swap" : 2.027123023002322,
    "currentBalance" : 9.018348186070783,
    "timePosition" : "2000-01-23T04:56:07.000+00:00",
    "externalId" : "externalId",
    "volume" : 5.025004791520295,
    "accountId" : 6,
    "entry" : 5,
    "positionId" : 6,
    "marketBid" : 6.683562403749608,
    "digits" : 2,
    "rateProfit" : 1.2315135367772556,
    "comment" : "comment",
    "time" : "2000-01-23T04:56:07.000+00:00",
    "priceTP" : 1.1730742509559433,
    "gateway" : "gateway"
  } ],
  "code" : 6,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter accountId: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)

     - returns: RequestBuilder<DealIEnumerableBaseResponse> 
     */
    open class func apiTradingDealHistoryGetWithRequestBuilder(accountId: Int64? = nil, startDate: Date? = nil, endDate: Date? = nil) -> RequestBuilder<DealIEnumerableBaseResponse> {
        let path = "/api/Trading/deal/history"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "accountId": accountId?.encodeToJSON(), 
                        "startDate": startDate?.encodeToJSON(), 
                        "endDate": endDate?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<DealIEnumerableBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter orderId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingOrderOrderIdDelete(orderId: Int, completion: @escaping ((_ data: OrderBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingOrderOrderIdDeleteWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - DELETE /api/Trading/order/{orderId}
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : {
    "symbol" : "symbol",
    "reason" : 1,
    "volumeInitial" : 9.897492629215506,
    "priceOrdered" : 8.761432466225475,
    "externalId" : 8,
    "timeDone" : "2000-01-23T04:56:07.000+00:00",
    "volumeCurrent" : 5.877124706116695,
    "type" : 3,
    "timeSetup" : "2000-01-23T04:56:07.000+00:00",
    "accountId" : 6,
    "typeFill" : 9,
    "positionId" : 3,
    "digits" : 4,
    "contractSize" : 8,
    "priceExecuted" : 0.4182561061793122,
    "priceSL" : 5.299143560275359,
    "volumeInitialExt" : 8.37823741034869,
    "comment" : "comment",
    "id" : 1,
    "state" : 9,
    "volumeCurrentExt" : 7.606863723092579,
    "priceTP" : 5.312489704336296,
    "timeExpiration" : "2000-01-23T04:56:07.000+00:00",
    "rateMargin" : 3.111202833403195
  },
  "code" : 0,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter orderId: (path)  

     - returns: RequestBuilder<OrderBaseResponse> 
     */
    open class func apiTradingOrderOrderIdDeleteWithRequestBuilder(orderId: Int) -> RequestBuilder<OrderBaseResponse> {
        var path = "/api/Trading/order/{orderId}"
        let orderIdPreEscape = "\(orderId)"
        let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{orderId}", with: orderIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<OrderBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create  This API endpoint accepts a dictionary Fileds -  where each key is a field from the Group object.  The possible keys are: Symbol(string)*, Type(Buy = 0, Sell = 1, BuyLimit = 2,  SellLimit = 3, BuyStop = 4, SellStop = 5 })*, PriceOrdered(double), PriceSL(double), PriceTP(double), Comment(string), VolumeInitial(double).

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingOrderPost(body: [String:String]? = nil, completion: @escaping ((_ data: OrderBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingOrderPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create  This API endpoint accepts a dictionary Fileds -  where each key is a field from the Group object.  The possible keys are: Symbol(string)*, Type(Buy = 0, Sell = 1, BuyLimit = 2,  SellLimit = 3, BuyStop = 4, SellStop = 5 })*, PriceOrdered(double), PriceSL(double), PriceTP(double), Comment(string), VolumeInitial(double).
     - POST /api/Trading/order
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : {
    "symbol" : "symbol",
    "reason" : 1,
    "volumeInitial" : 9.897492629215506,
    "priceOrdered" : 8.761432466225475,
    "externalId" : 8,
    "timeDone" : "2000-01-23T04:56:07.000+00:00",
    "volumeCurrent" : 5.877124706116695,
    "type" : 3,
    "timeSetup" : "2000-01-23T04:56:07.000+00:00",
    "accountId" : 6,
    "typeFill" : 9,
    "positionId" : 3,
    "digits" : 4,
    "contractSize" : 8,
    "priceExecuted" : 0.4182561061793122,
    "priceSL" : 5.299143560275359,
    "volumeInitialExt" : 8.37823741034869,
    "comment" : "comment",
    "id" : 1,
    "state" : 9,
    "volumeCurrentExt" : 7.606863723092579,
    "priceTP" : 5.312489704336296,
    "timeExpiration" : "2000-01-23T04:56:07.000+00:00",
    "rateMargin" : 3.111202833403195
  },
  "code" : 0,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<OrderBaseResponse> 
     */
    open class func apiTradingOrderPostWithRequestBuilder(body: [String:String]? = nil) -> RequestBuilder<OrderBaseResponse> {
        let path = "/api/Trading/order"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<OrderBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingOrderPut(body: [String:String]? = nil, completion: @escaping ((_ data: OrderBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingOrderPutWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /api/Trading/order
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : {
    "symbol" : "symbol",
    "reason" : 1,
    "volumeInitial" : 9.897492629215506,
    "priceOrdered" : 8.761432466225475,
    "externalId" : 8,
    "timeDone" : "2000-01-23T04:56:07.000+00:00",
    "volumeCurrent" : 5.877124706116695,
    "type" : 3,
    "timeSetup" : "2000-01-23T04:56:07.000+00:00",
    "accountId" : 6,
    "typeFill" : 9,
    "positionId" : 3,
    "digits" : 4,
    "contractSize" : 8,
    "priceExecuted" : 0.4182561061793122,
    "priceSL" : 5.299143560275359,
    "volumeInitialExt" : 8.37823741034869,
    "comment" : "comment",
    "id" : 1,
    "state" : 9,
    "volumeCurrentExt" : 7.606863723092579,
    "priceTP" : 5.312489704336296,
    "timeExpiration" : "2000-01-23T04:56:07.000+00:00",
    "rateMargin" : 3.111202833403195
  },
  "code" : 0,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<OrderBaseResponse> 
     */
    open class func apiTradingOrderPutWithRequestBuilder(body: [String:String]? = nil) -> RequestBuilder<OrderBaseResponse> {
        let path = "/api/Trading/order"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<OrderBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     This API endpoint accepts a object PositionCloseModel  The required fields are: PositionId(long)  AccountId field is not necessary and will be parsed from authorized user

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingPositionCloseDelete(body: PositionCloseModel? = nil, completion: @escaping ((_ data: StringBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingPositionCloseDeleteWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     This API endpoint accepts a object PositionCloseModel  The required fields are: PositionId(long)  AccountId field is not necessary and will be parsed from authorized user
     - DELETE /api/Trading/position/close
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : "result",
  "code" : 0,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<StringBaseResponse> 
     */
    open class func apiTradingPositionCloseDeleteWithRequestBuilder(body: PositionCloseModel? = nil) -> RequestBuilder<StringBaseResponse> {
        let path = "/api/Trading/position/close"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StringBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update  This API endpoint accepts a array Ids - where each key is a id.  This API endpoint accepts a dictionary Fileds - where each key is a field from the Position object.  The possible keys are: PriceSL(double), PriceTP(double)

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingPositionUpdatePut(body: [String:String]? = nil, completion: @escaping ((_ data: PositionBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingPositionUpdatePutWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update  This API endpoint accepts a array Ids - where each key is a id.  This API endpoint accepts a dictionary Fileds - where each key is a field from the Position object.  The possible keys are: PriceSL(double), PriceTP(double)
     - PUT /api/Trading/position/update
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : {
    "isBuy" : true,
    "tradeVolume" : 0.43431398824148815,
    "symbol" : "symbol",
    "reason" : 0,
    "volumeExt" : 4.86315908102884,
    "timeUpdate" : "2000-01-23T04:56:07.000+00:00",
    "swap" : 6.073898085781152,
    "externalId" : 1,
    "positionNumber" : 4,
    "volume" : 3.901545264248647,
    "accountId" : 4,
    "timeCreate" : "2000-01-23T04:56:07.000+00:00",
    "priceCurrent" : 0.5199002018724985,
    "digits" : 7,
    "contractSize" : 9,
    "priceOpen" : 9.702963800023566,
    "priceSL" : 7.933506881737151,
    "rateProfit" : 8.251625748923757,
    "comment" : "comment",
    "commission" : 2.9409642974827896,
    "id" : 6,
    "priceTP" : 5.507386964179881,
    "rateMargin" : 4.459605034958679
  },
  "code" : 0,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<PositionBaseResponse> 
     */
    open class func apiTradingPositionUpdatePutWithRequestBuilder(body: [String:String]? = nil) -> RequestBuilder<PositionBaseResponse> {
        let path = "/api/Trading/position/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PositionBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingQuotesLatestGet(completion: @escaping ((_ data: [QuoteViewModel]?,_ error: Error?) -> Void)) {
        apiTradingQuotesLatestGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/Trading/quotes/latest
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
    open class func apiTradingQuotesLatestGetWithRequestBuilder() -> RequestBuilder<[QuoteViewModel]> {
        let path = "/api/Trading/quotes/latest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[QuoteViewModel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingQuotesPreviousdaylatestGet(completion: @escaping ((_ data: [QuoteViewModel]?,_ error: Error?) -> Void)) {
        apiTradingQuotesPreviousdaylatestGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/Trading/quotes/previousdaylatest
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
    open class func apiTradingQuotesPreviousdaylatestGetWithRequestBuilder() -> RequestBuilder<[QuoteViewModel]> {
        let path = "/api/Trading/quotes/previousdaylatest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[QuoteViewModel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter symbol: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingSymbolFavoriteAddPost(symbol: String? = nil, completion: @escaping ((_ data: FavoriteSymbolBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingSymbolFavoriteAddPostWithRequestBuilder(symbol: symbol).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/Trading/symbol/favorite/add
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : {
    "accountId" : 6,
    "symbolName" : "symbolName",
    "id" : 0
  },
  "code" : 1,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter symbol: (query)  (optional)

     - returns: RequestBuilder<FavoriteSymbolBaseResponse> 
     */
    open class func apiTradingSymbolFavoriteAddPostWithRequestBuilder(symbol: String? = nil) -> RequestBuilder<FavoriteSymbolBaseResponse> {
        let path = "/api/Trading/symbol/favorite/add"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "symbol": symbol
        ])


        let requestBuilder: RequestBuilder<FavoriteSymbolBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter symbol: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTradingSymbolFavoriteRemoveDelete(symbol: String? = nil, completion: @escaping ((_ data: FavoriteSymbolBaseResponse?,_ error: Error?) -> Void)) {
        apiTradingSymbolFavoriteRemoveDeleteWithRequestBuilder(symbol: symbol).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - DELETE /api/Trading/symbol/favorite/remove
     - 

     - :
       - type: http
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "result" : {
    "accountId" : 6,
    "symbolName" : "symbolName",
    "id" : 0
  },
  "code" : 1,
  "errorMessage" : "errorMessage",
  "isSuccessed" : true,
  "errors" : {
    "key" : "errors"
  }
}}]
     - parameter symbol: (query)  (optional)

     - returns: RequestBuilder<FavoriteSymbolBaseResponse> 
     */
    open class func apiTradingSymbolFavoriteRemoveDeleteWithRequestBuilder(symbol: String? = nil) -> RequestBuilder<FavoriteSymbolBaseResponse> {
        let path = "/api/Trading/symbol/favorite/remove"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "symbol": symbol
        ])


        let requestBuilder: RequestBuilder<FavoriteSymbolBaseResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}