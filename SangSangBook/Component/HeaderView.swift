//
//  HeaderView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 10) {
            Text("상상Book")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(Color(hex: "C7CED9"))
            
            Spacer()
            
            Image("myPage")
                .resizable()
                .scaledToFit()
                .frame(width: 23, height: 23)
                .padding(.trailing, 8)
            
            Image("noti")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)

            Image("menu")
                .resizable()
                .scaledToFit()
                .frame(width: 31, height: 31)

        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    HeaderView()
}
