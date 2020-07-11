//
//  ComplexRow.swift
//  WWDC20
//
//  Created by liang on 2020/7/6.
//

import SwiftUI

struct ComplexRow: View {
    var m: Movie
    var body: some View {
        HStack {
            Image(m.poster)
                .addClassName(poster_clsName)
            
            VStack(alignment: .leading) {
                Text(m.name)
                    .lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/).font(.callout)
                Text("\(m.duration)分钟 - \(m.type.rawValue)")
                    
                Spacer()
                Text("“\(m.comments!)“").addClassName(comments_clsName)
            }
            .padding(.horizontal, 4)
            .padding(.vertical, 1)
            
            if m.isFavorite {
                VStack /*@START_MENU_TOKEN@*/{
                    Spacer()
                    Image(systemName: "heart.fill").foregroundColor(.red)
                }/*@END_MENU_TOKEN@*/
            }
        }.padding(.vertical, 4)
    }
}


struct ComplexRow_Previews: PreviewProvider {
    static var previews: some View {
        ComplexRow(m: movieData[0])
    }
}
