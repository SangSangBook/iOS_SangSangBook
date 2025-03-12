//
//  ReservationView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct ReservationView: View {
    var body: some View {
        HStack(spacing: 16) {
            // 학술정보관 대여 카드
            ReservationCardView(
                title: "학술정보관\n대여",
                tags: ["# 그룹스터디룸", "# 집중열람실"],
                imageName: "books"
            )

            // 상상베이스 대여 카드
            ReservationCardView(
                title: "상상베이스\n대여",
                tags: ["", "# 상상관 B2"],
                imageName: "studentdesk"
            )

            // 상상파크+ 대여 카드
            ReservationCardView(
                title: "상상파크+\n대여",
                tags: ["", "# 공학관 B1"],
                imageName: "person.2.badge.plus.fill"
            )
        }
        .padding(.horizontal, 24)
    }
}

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
    }
}

#Preview {
    ReservationView()
}
