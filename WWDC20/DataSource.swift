//
//  DataSource.swift
//  WWDC20
//
//  Created by liang on 2020/7/2.
//

import Foundation

enum MovieType: String {
    case comdy = "喜剧"
    case criminal = "犯罪"
    case record = "纪录片"
    case story = "剧情"
    case other = "其它"
}

struct Movie: Identifiable {
    var id = UUID()
    var name: String
    var duration: Int
    var poster: String
    var type: MovieType
    var comments: String?
    
    var isFavorite: Bool {return self.type == .comdy || self.type == .criminal}
}

let movieData = [
    Movie(name: "唐人街探案3", duration: 136, poster: "trjta", type: .comdy),
    Movie(name: "南方车站的聚会", duration: 113, poster: "nfczdjh", type: .criminal, comments: "最帅不过胡歌"),
    Movie(name: "坂本龙一：终曲", duration: 100, poster: "zq", type: .record),
    Movie(name: "理查德·朱维尔的哀歌", duration: 129, poster: "ag", type: .story, comments: "英雄变嫌犯的美国奇案"),
    Movie(name: "囧妈", duration: 126, poster: "jm", type: .comdy),
]
