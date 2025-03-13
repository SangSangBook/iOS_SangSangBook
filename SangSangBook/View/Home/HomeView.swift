//
//  HomeView.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "F2F3F7") // 배경색 적용
                    .edgesIgnoringSafeArea(.all) // 안전 영역 무시하여 전체 적용

                VStack {
                    HeaderView()
                    SegmentView()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    HomeView()
}
