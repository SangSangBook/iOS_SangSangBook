//
//  UserModel.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import Foundation

struct UserModel {
    let email: String
    let password: String
    
    // 임시 사용자 데이터
    static let dummyUser = UserModel(email: "test", password: "1234")
}
