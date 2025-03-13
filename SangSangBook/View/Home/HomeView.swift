//
//  HomeView.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            SegmentView()
        }
        .background(Color(hex: "F0F0F0"))
    }
}

#Preview {
    HomeView()
}
