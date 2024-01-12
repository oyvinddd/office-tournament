//
//  APIClient.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import Foundation

struct APIClient {
    
    private static let session = URLSession.shared
    
    static func executeRequest<T: Codable>(_ request: URLRequest) async throws -> T {
        let (data, _) = try await session.data(for: request)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
