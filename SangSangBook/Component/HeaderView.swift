//
//  HeaderView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("상상Book")
                .font(.system(size: 32, weight: .bold))
            
            Spacer()
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    HeaderView()
}
