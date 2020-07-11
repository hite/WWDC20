//
//  Products.swift
//  WWDC20
//
//  Created by liang on 2020/7/11.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String // 商品图
    var price: Float
    var tags: [String] = [] // 促销标签
    var sellPrice: Float
    var desc: String?
    var spuInfo: String? // 当前 sku 的 spu 信息。如“两件装"
    
}


let Products = [
    Product(name: "埃及进口长绒棉毛巾", image: "towel", price: 149, tags: [], sellPrice: 32, desc: nil, spuInfo: nil),
    Product(name: "德国制造叠加餐椅", image: "chair", price: 1299, tags: ["3件减30","新品"], sellPrice: 1099, desc: "随心叠放 方便存储", spuInfo: "2件装"),
    Product(name: "多功能颈枕 针织款", image: "pillow", price: 149, tags: [], sellPrice: 69, desc: "针织透气, 日式条纹", spuInfo: nil),
    Product(name: "Yessing女式高支高密圆领", image: "yessing", price: 139, tags: [], sellPrice: 109, desc: "高支高密, 专属舒适定制", spuInfo: nil)
]
