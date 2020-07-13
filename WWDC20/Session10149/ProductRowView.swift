//
//  ProductRowView.swift
//  WWDC20
//
//  Created by liang on 2020/7/11.
//

import SwiftUI

struct ProductRowView: View {
    let startIndex: Int
    var body: some View {
        var height: CGFloat = 280
        if (Products[startIndex].tags.count > 0 || Products[startIndex+1].tags.count > 0) {
            height = 300
        }
        return HStack(spacing: 10){
            ProductItemView(item: Products[startIndex])
            ProductItemView(item: Products[startIndex + 1])
        }.padding(.horizontal, 10)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: height)
    }
}

struct ProductRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProductRowView(startIndex: 0)
        }
    }
}
