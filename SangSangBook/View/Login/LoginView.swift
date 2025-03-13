//
//  LoginView.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @FocusState private var emailFieldIsFocused: Bool
    @FocusState private var passwordFieldIsFocused: Bool
    
    // 로그인 버튼 활성화 여부
    private var isLoginEnabled: Bool {
        return !viewModel.email.isEmpty && !viewModel.password.isEmpty
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "F2F3F7")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("상상Book")
                        .padding(.bottom, 20)
                        .font(.jalnan2(.regular, size: 40))
                        .fontWeight(.bold)
                        .foregroundStyle(Color(hex: "#C7CED9"))
                    
                    HStack {
                        Image("loginId")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 21)
                        
                        TextField("아이디", text: $viewModel.email)
                            .font(.ggTitle(.light, size: 20))
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .focused($emailFieldIsFocused)
                            .padding(.leading, 20)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(.white)
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(emailFieldIsFocused ? Color(hex: "0B4DA1") : Color.clear, lineWidth: 2)
                    )
                    .padding(.horizontal, 60)

                    HStack {
                        Image("loginPw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 17)
                        
                        SecureField("비밀번호", text: $viewModel.password)
                            .font(.ggTitle(.light, size: 20))
                            .focused($passwordFieldIsFocused)
                            .padding(.leading, 20)
                    }
                    .padding(.horizontal, 22)
                    .padding(.vertical, 10)
                    .background(.white)
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(passwordFieldIsFocused ? Color(hex: "0B4DA1") : Color.clear, lineWidth: 2)
                    )
                    .padding(.horizontal, 60)
                    
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    NavigationLink(destination: HomeView(), isActive: $viewModel.isLoggedIn) {
                        Button(action: {
                            viewModel.login()
                        }) {
                            Text(viewModel.isLoading ? "로그인 중..." : "로그인")
                                .font(.jalnan2(.regular, size: 30))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 10)
                                .background(isLoginEnabled ? Color(hex: "#0B4DA1") : Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .padding(.horizontal, 60)
                        .disabled(!isLoginEnabled || viewModel.isLoading) // 입력이 안 되었거나 로딩 중이면 비활성화
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
