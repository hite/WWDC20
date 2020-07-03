//
//  ContentView.swift
//  WWDC20
//
//  Created by liang on 2020/7/2.
//

import SwiftUI

struct ContentView: View {
    var movies: [Movie]
    var body: some View {
        NavigationView {
            List(movies) { m in
                if m.comments != nil {
                    ComplexRow(m: m)
                } else {
                    SimpleRow(m: m)
                }
            }.navigationTitle("7月份即将上映的电影")
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movies: movieData)
    }
}

let timeInfo_clsName = CSSStyle([
    .font(.subheadline),
    .foregroundColor(.secondary)
])
let poster_clsName = CSSStyle([
    .cornerRadius(3.0)
])
let comments_clsName = CSSStyle([
    .font(.footnote),
    .paddingEdges([.top], 2.0),
    .foregroundColor(.blue)
])

struct SimpleRow: View {
    var m: Movie
    var body: some View {
        HStack {
            Image(m.poster)
                .addClassName(poster_clsName)
            
            VStack(alignment: .leading) {
                Text(m.name)
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

struct ComplexRow: View {
    var m: Movie
    var body: some View {
        HStack {
            Image(m.poster)
                .addClassName(poster_clsName)
            
            VStack(alignment: .leading) {
                Text(m.name).lineLimit(1)
                Text("\(m.duration)分钟 - \(m.type.rawValue)")
                    .addClassName(timeInfo_clsName)
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

struct SimpleFavoriteContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            SimpleHeart(),
            title: "Red heart in right",
            category: .control
        )
        LibraryItem(
            VStack {
                Spacer()
                Image(systemName: "heart.fill").foregroundColor(.red)
            },
            title: "Red heart in bottom",
            category: .control,
            matchingSignature: "s"
        )
    }
    @LibraryContentBuilder
    func modifiers(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.addClassName(comments_clsName),
            title: "Comment Blue Style",
            category: .effect
        )
    }
}
/// 红心在右侧，居中
struct SimpleHeart: View {
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "heart.fill").foregroundColor(.red)
        }
    }
}
