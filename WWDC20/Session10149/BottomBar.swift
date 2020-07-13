//
//  BottomBar.swift
//  WWDC20
//
//  Created by liang on 2020/7/12.
//

import SwiftUI

struct BottomBar: View {
    @Binding var count: String
    var body: some View {
        HStack{
            Button(action: {
                self.count = "\((Int(self.count) ?? 0) + 1)"
            }, label: {
                Text("+").font(.largeTitle).foregroundColor(.red)
            })
            TextField("0", text: $count)
                .multilineTextAlignment(.center)
                .frame(width: 20.0)
            Button(action: {
                var countInt: Int
                countInt = (Int(self.count) ?? 0) - 1;
                if countInt < 0{
                    countInt = 0
                }
                self.count = "\(countInt)"
            }, label: {
                Text("-").font(.largeTitle).foregroundColor(.red)
            })
            
        }
    }
}

struct BottomBar_Previews_2: PreviewProvider {

    static var previews: some View {
        BottomBar(count: .constant("2"))
    }
}
struct BottomBar_Previews: PreviewProvider {
    struct IntermediaView: View {
        @State var count = "0"
        var body: some View{
            BottomBar(count: $count)
        }
    }
    static var previews: some View {
        IntermediaView()
    }
}
