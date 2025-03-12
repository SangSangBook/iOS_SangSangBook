//
//  HomeViewController.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct HomeViewController: View {
    var body: some View {
        VStack {
            HeaderView()
            
            SegmentView()            
        }
        .background(Color(hex: "F0F0F0"))
    }
}

#Preview {
    HomeViewController()
}
