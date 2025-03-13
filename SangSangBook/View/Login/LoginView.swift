//
//  LoginView.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "F2F3F7")
                    .edgesIgnoringSafeArea(.all) // 안전 영역 무시하여 전체 적용
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("상상Book")
                        .padding(.bottom, 20)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color(hex: "#C7CED9"))
                    
                    HStack {
                        Image("loginId")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 21)
                        
                        TextField("아이디", text: $viewModel.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .padding(.leading, 20)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(.white)
                    .cornerRadius(5)
                    .padding(.horizontal, 60)
                    
                    HStack {
                        Image("loginPw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 17)
                        
                        SecureField("비밀번호", text: $viewModel.password)
                            .padding(.leading, 20)
                    }
                    .padding(.horizontal, 22)
                    .padding(.vertical, 10)
                    .background(.white)
                    .cornerRadius(5)
                    .padding(.horizontal, 60)
                    
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    // 로그인 성공 시 홈 화면으로 이동
                    NavigationLink(destination: HomeView(), isActive: $viewModel.isLoggedIn) {
                        Button(action: {
                            viewModel.login()
                        }) {
                            Text(viewModel.isLoading ? "로그인 중..." : "로그인")
                                .font(.system(size: 30, weight: .bold))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 10)
                                .background(Color(hex: "#0B4DA1"))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .padding(.horizontal, 60)
                        .disabled(viewModel.isLoading)
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 150)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
