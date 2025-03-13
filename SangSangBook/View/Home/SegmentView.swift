//
//  SegmentView.swift
//  SangSangBook
//
//  Created by KKM on 3/12/25.
//

import SwiftUI

struct SegmentView: View {
    @State private var selectedTab: String = "시설"
    private let tabs = ["시설", "기자재"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // 상단 탭 바
            CustomSegmentedControl(selectedTab: $selectedTab, tabs: tabs)
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
            
            // 화면 전환 뷰
            TabView(selection: $selectedTab) {
                FacilityView()
                    .tag("시설")
                
                EquipmentView()
                    .tag("기자재")
            }
            .tabViewStyle(.page(indexDisplayMode: .never)) // 인디케이터 제거
        }
        .animation(.easeInOut(duration: 0.25), value: selectedTab)
    }
}

// MARK: - 커스텀 탭 바 (프레그먼트바 애니메이션 적용)
struct CustomSegmentedControl: View {
    @Binding var selectedTab: String
    let tabs: [String]
    
    @Namespace private var animationNamespace
    @State private var tabFrames: [CGRect] = Array(repeating: .zero, count: 2)
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                ForEach(tabs.indices, id: \.self) { index in
                    Text(tabs[index])
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(selectedTab == tabs[index] ? .black : .gray)
                        .background(GeometryReader { geo in
                            Color.clear
                                .onAppear {
                                    tabFrames[index] = geo.frame(in: .global)
                                }
                        })
                        .onTapGesture {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                selectedTab = tabs[index]
                            }
                        }
                }
            }
            .background(
                GeometryReader { geo in
                    let selectedIndex = tabs.firstIndex(of: selectedTab) ?? 0
                    let frame = tabFrames[selectedIndex]
                    
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color.blue)
                        .frame(width: frame.width, height: 3)
                        .offset(x: frame.minX - geo.frame(in: .global).minX, y: 20)
                        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: selectedTab)
                }
            )
        }
        .padding(.bottom, 5)
    }
}

#Preview {
    SegmentView()
}
