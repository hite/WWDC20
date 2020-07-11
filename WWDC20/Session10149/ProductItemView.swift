//
//  ProductItemView.swift
//  WWDC20
//
//  Created by liang on 2020/7/11.
//

import SwiftUI


//为何直接设置 font，会出现崩溃
//（dispatch thunk of Rule.value.getter + 7
//17  com.apple.SwiftUI                 0x000000010e87da08 implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:) + 56
//18  com.apple.AttributeGraph          0x0000000117bc10d3 AG::Graph::UpdateStack::update() + 505
//19  com.apple.AttributeGraph          0x0000000117bc1569 AG::Graph::update_attribute(AG::data::ptr<AG::Node>, bool) + 335
//20  com.apple.AttributeGraph          0x0000000117bc6231 AG::Graph::input_value_ref_slow(AG::data::ptr<AG::Node>, AG::AttributeID, unsigned int, AGSwiftMetadata const*, bool*, long) + 523

let desc_clsName = CSSStyle([
    .font(.subheadline),
    .foregroundColor(Color("descTextColor"))
])

struct ProductItemView: View {
    var item: Product
    
    func fp(_ price: Float) -> String {
        let format = String(format:"%.2f",price)
        return "￥\(format)"
    }
    var body: some View {
        
         return VStack(alignment:.leading) {
            VStack(spacing:0){
                ZStack{
                    Image(item.image)
                }.frame(height: 178, alignment: .center)
                if item.desc != nil {
                    Text(item.desc!).addClassName(desc_clsName)
                        .frame(minWidth:0,maxWidth: .infinity, minHeight: 0, maxHeight: 22)
                        .background(Color("descBackground"))
                }
            }.frame(height: 200, alignment: .center)
            .background(Color("itemBackground"))

            Text(item.name).font(Font.system(size: 14)).padding(.vertical, 15)
            if item.tags.count > 0 {
                HStack{
                    ForEach(item.tags, id: \.self) { tag in
                        Text(tag).font(Font.system(size: 10)).foregroundColor(Color("tagTextColor")).padding(4).background(Color("tagBackground")).cornerRadius(8)
                    }
                    Spacer()
                }
            }
            HStack{
                HStack(alignment:.bottom){
                    Text(fp(item.price)).font(Font.system(size: 16)).foregroundColor(Color("tagTextColor"))
                    if item.sellPrice > 0 {
                        Text(fp(item.sellPrice)).strikethrough().font(Font.system(size: 12)).foregroundColor(.secondary)
                    }
                }
                Spacer()
                Image("ico-shopcart")
            }
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(item: Products[1])
    }
}
