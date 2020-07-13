//
//  ProductLIst.swift
//  WWDC20
//
//  Created by liang on 2020/7/11.
//

import SwiftUI

struct ProductList: View {
    @State var count = "1"
    var body: some View {
        VStack{
            ProductRowView(startIndex: 0)
            ProductRowView(startIndex: 2)
            BottomBar(count: $count)
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}
