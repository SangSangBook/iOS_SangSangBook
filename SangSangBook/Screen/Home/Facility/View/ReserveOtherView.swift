//
//  ReserveOtherView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct ReserveOtherView: View {
    var body: some View {
        HStack(spacing: 16) {
            // 강의실 대여 카드
            ReservationCardView(
                title: "강의실\n대여",
                tags: ["# 탐구관", "# 상상관", "# 공학관"],
                imageName: "classroom"
            )

            // 체육시설 대여 카드
            ReservationCardView(
                title: "체육시설\n대여",
                tags: ["# 낙산관 체육관", "# 상상관 체육관", "# 잔디광장 풋살장"],
                imageName: "playground"
            )
        }
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ReserveOtherView()
}
