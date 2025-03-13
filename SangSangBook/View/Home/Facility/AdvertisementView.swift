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
            Color.white
            
            Image("knight")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            Text("상상부기상북 상북어 상북스딱스 상부르크상부가우가\n상비기상부거 상부가티상부기온앤온을 차려오거라.\n\n상부기상북 상북어 상북스딱스 상부르크상부가우가\n상부기상부거 상부가티상부기온앤온을 차려오라고 하지않았느냐.")
                .font(.yoonDokrip(.regular, size: 11))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 4)
        }
        .cornerRadius(8)
        .padding(.horizontal, 24)
        .padding(.vertical, 10)
    }
}

#Preview {
    AdvertisementView().background(.red)
}
