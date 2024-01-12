//
//  RequestFactory.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 10/01/2024.
//

import Foundation

enum RequestMethod: String {
    case get, post, put, delte
}

enum RequestEndpoint: String {
    
    case signIn = "signin"
    
    case createTournament = "tournament/new"
    
    case getTournament = "tournament"
    
    case jointTournament = "tournament/join"
}

final class URLRequestBuilder {
    
    private var baseUrl = "localhost:8000/api/v1/"
    
    private var method: RequestMethod
    
    private var endpoint: RequestEndpoint
    
    private var headers: [String: String]?
    
    private var body: Data?
    
    init(_ method: RequestMethod, endpoint: RequestEndpoint) {
        self.method = method
        self.endpoint = endpoint
    }
    
    func set(_ headers: [String: String]) -> Self {
        self.headers = headers
        return self
    }
    
    func set(_ entity: Encodable) -> Self {
        body = try? JSONEncoder().encode(entity)
        return self
    }
    
    func build() -> URLRequest {
        var request = URLRequest(url: URL(string: "\(baseUrl)\(endpoint)")!)
        request.httpMethod = method.rawValue
        request.httpBody = body
        return request
    }
}
