//
//  ProductLIst.swift
//  WWDC20
//
//  Created by liang on 2020/7/11.
//

import SwiftUI

struct ProductList: View {
    var body: some View {
        Text("ewer")
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ProductRowView(startIndex: 0)
            ProductRowView(startIndex: 2)
        }
    }
}
