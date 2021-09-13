//
//  PostListView.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/11.
//

import SwiftUI

struct PostListView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    var body: some View {
        List{
            ForEach(postList.list){post in
                ZStack{
                    PostCell(post: post)
                    NavigationLink(
                        destination: PostDetail(post: post)) {
                        EmptyView()
                    }.hidden()
                }
                .listRowInsets(EdgeInsets())
        }
        
            
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PostListView()
                .navigationBarTitle("Title")
                .navigationBarHidden(true)
        }
    }
}
