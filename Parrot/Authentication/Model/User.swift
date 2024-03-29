//
//  User.swift
//  Parrot
//
//  Created by administrador on 25/07/19.
//  Copyright © 2019 Treinamento. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class User: Object, Mappable {
    
    var id = RealmOptional<Int>()
    @objc dynamic var name: String?
    @objc dynamic var username: String?
    @objc dynamic var email: String?
    @objc dynamic var password: String?
    @objc dynamic var token: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func mapping(map: Map) {
        
        self.id.value       <- map["id"]
        self.name           <- map["nome"]
        self.username       <- map["username"]
        self.email          <- map["email"]
        self.password       <- map["password"]
        self.token       <- map["token"]
    }
}
