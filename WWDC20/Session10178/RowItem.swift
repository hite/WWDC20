//
//  RowItem.swift
//  WWDC20
//
//  Created by liang on 2020/7/6.
//

import SwiftUI

struct SimpleRow: View {
    var m: Movie
    var body: some View {
        HStack {
            Image(m.poster)
                .addClassName(poster_clsName)
            
            VStack(alignment: .leading) {
                Text(m.name)
                    .font(.title)
                Spacer()
                Text("\(m.duration)分钟 - \(m.type.rawValue)")
                    .addClassName(timeInfo_clsName)
            }
            .padding(.horizontal, 4)
            .padding(.vertical, 1)
            
            if m.isFavorite {
                HStack/*@START_MENU_TOKEN@*/{
                    Spacer()
                    Image(systemName: "heart.fill").foregroundColor(.red)
                }/*@END_MENU_TOKEN@*/
            }
        }.padding(.vertical, 4)
    }
}

struct RowItem_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SimpleRow(m: movieData[0])
                .preferredColorScheme(.dark)
        }
    }
}
