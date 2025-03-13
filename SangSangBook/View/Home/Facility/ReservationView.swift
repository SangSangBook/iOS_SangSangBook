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
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ReservationView()
}
