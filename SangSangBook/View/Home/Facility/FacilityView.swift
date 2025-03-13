//
//  FacilityView.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import SwiftUI

struct FacilityView: View {
    var body: some View {
        VStack {
            RecommendView()
            
            ReservationView()
            ReserveOtherView()
            
            AdvertisementView().padding(.horizontal, 24)
        }
    }
}

#Preview {
    FacilityView()
}
