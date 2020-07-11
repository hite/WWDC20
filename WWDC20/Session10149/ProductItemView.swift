//
//  ProductItemView.swift
//  WWDC20
//
//  Created by liang on 2020/7/11.
//

import SwiftUI

struct ProductItemView: View {
    var item: Product
    
    var body: some View {
//        VStack {
//            VStack(spacing:0){
//                ZStack{
//                    Image(item.image)
//                }.frame(width: 170, height: 178, alignment: .center)
//                if item.desc != nil {
                    Text(item.desc)
                        .foregroundColor(Color("descTextColor"))
                    font(.subheadline)
//
//                }
//            }.frame(width: 170, height: 200, alignment: .center)
//            .background(Color("itemBackground"))
//
//            Text(item.name)
//        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(item: Products[1])
    }
}
