//
//  LoginViewModel.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    @Published var isLoggedIn: Bool = false // 로그인 상태 확인

    func login() {
        isLoading = true
        errorMessage = nil
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { // 0.5초 후 실행 (로딩 시뮬레이션)
            self.isLoading = false
            
            // 임시 데이터와 비교
            if self.email == UserModel.dummyUser.email && self.password == UserModel.dummyUser.password {
                self.isLoggedIn = true // 로그인 성공
            } else {
                self.errorMessage = "아이디 또는 비밀번호가 틀렸습니다."
            }
        }
    }
}
