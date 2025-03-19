//
//  Font+Extension.swift
//  SangSangBook
//
//  Created by KKM on 3/13/25.
//

import SwiftUI

extension Font {
    // **Jalnan2 폰트 스타일**
    enum Jalnan2Style: String {
        case regular = "Jalnan2"
    }
    
    // **GyeonggiTitleOTF 폰트 스타일**
    enum GyeonggiTitleOTFStyle: String {
        case bold = "GyeonggiTitleOTF_Bold"
        case light = "GyeonggiTitleOTF_Light"
        case medium = "GyeonggiTitleOTF_Medium"
        case regular = "GyeonggiTitleOTF_Regular"
    }
    
    // **YoonDokrip 폰트 스타일**
    enum YoonDokripStyle: String {
        case regular = "Jalnan2"
    }

    // **Jalnan2 폰트 적용**
    static func jalnan2(_ type: Jalnan2Style, size: CGFloat) -> Font {
        return .custom(type.rawValue, size: size)
    }

    // **GyeonggiTitleOTF 폰트 적용** -> .font(.ggTitle(.bold, size: 22)) 와 같이 사용
    static func ggTitle(_ type: GyeonggiTitleOTFStyle, size: CGFloat) -> Font {
        return .custom(type.rawValue, size: size)
    }
    
    // **YoonDokrip 폰트 적용**
    static func yoonDokrip(_ type: YoonDokripStyle, size: CGFloat) -> Font {
        return .custom(type.rawValue, size: size)
    }
}
