//
//  AdvertisementView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct AdvertisementView: View {
    var body: some View {
        ZStack(alignment: .trailing) {
            Image("knight")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            VStack(alignment: .leading) {
                Text("상상부기상북 상북어 상북스딱스 상부르크상부가우가 상비기상부거 상부가티상부기온앤온을 차려오거라.\n")
                    .font(.yoonDokrip(.regular, size: 15))
                
                Text("상상부기상북 상북어 상북스딱스 상부르크상부가우가 상비기상부거 상부가티상부기온앤온을 차려오거라.")
                    .font(.yoonDokrip(.regular, size: 15))
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 4)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(8)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    AdvertisementView()
}
