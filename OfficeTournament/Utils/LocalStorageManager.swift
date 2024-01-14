//
//  LocalStorageManager.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import Foundation

private enum StorageKey: String {
    case user
}

struct LocalStorageManager {
    
    private static let defaults = UserDefaults.standard
    
    static func loadUser() -> User? {
        defaults.object(forKey: StorageKey.user.rawValue) as? User
    }
    
    static func saveUser(_ user: User) {
        defaults.set(user, forKey: StorageKey.user.rawValue)
    }
}
