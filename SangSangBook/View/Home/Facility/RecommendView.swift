//
//  RecommendView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct RecommendView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("부기's Pick!")
                .font(.jalnan2(.regular, size: 40))
                .foregroundStyle(Color(hex: "0B4DA1"))
            
            Text("AI를 이용해서 시설 추천을 받아보세요!")
                .font(.jalnan2(.regular, size: 16))
                .foregroundStyle(Color(hex: "C7CED9"))
                .lineLimit(1)
            
            HStack {
                Image("recommendBookie")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 168, height: 168)
                
                VStack(alignment: .leading) {
                    Text("# 콘센트 유무")
                        .font(.jalnan2(.regular, size: 15))
                        .foregroundStyle(Color(hex: "C7CED9"))
                    
                    Text("# 방 크기")
                        .font(.jalnan2(.regular, size: 15))
                        .foregroundStyle(Color(hex: "C7CED9"))
                }
            }
            .padding(.top, 20)
        }
        .padding(.vertical, 22)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(8)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 24)
    }
}

#Preview {
    RecommendView()
}
