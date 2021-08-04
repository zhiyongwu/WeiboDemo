//
//  Post.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/4.
//

import SwiftUI

struct PostList: Codable {
    var list: [Post]
}

struct Post: Codable {
    let id: Int
    let avatar: String
    let vip: Bool
    let name: String
    let date:String
    
    var isFollowed: Bool
    
    let text:String
    let images: [String]
    
    var commentCount: Int
    var likeCount: Int
    var isLiked: Bool
}

let postList = loadPostListData("PostListData_hot_1.json")

func loadPostListData(_ fileName: String) -> PostList{
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else{
        fatalError("cant find \(fileName) in bundle")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("cant not load \(url)")
    }
    guard let list = try? JSONDecoder().decode(PostList.self, from: data) else {
        fatalError("decode post list error")
    }
    return list
    
}
