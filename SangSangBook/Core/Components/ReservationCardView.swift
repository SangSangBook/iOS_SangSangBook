//
//  ReservationCardView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import Foundation
import SwiftUI

// MARK: - 재사용 가능한 예약 카드 뷰
struct ReservationCardView: View {
    let title: String
    let tags: [String]
    let imageName: String?
    
    var body: some View {
        ZStack {
            if let imageName = imageName {
                HStack {
                    Spacer() // 이미지가 오른쪽 끝으로 밀리도록 Spacer 추가
                    if UIImage(systemName: imageName) != nil {
                        // SF Symbol인 경우
                        Image(systemName: imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .padding(.top, 18)
                    } else {
                        // 일반 이미지(Assets)인 경우
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .padding(.top, 18)
                    }
                }
            }
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 15, weight: .bold))
                
                Spacer()
                    .frame(height: 20)
                
                ForEach(tags, id: \.self) { tag in
                    Text(tag)
                        .font(.system(size: 8, weight: .semibold))
                }
            }
            .padding(.top, 11)
            .padding(.bottom, 4)
            .padding(.horizontal, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(Color.white)
        .cornerRadius(8)
        .frame(maxWidth: .infinity)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}
