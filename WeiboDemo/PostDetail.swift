//
//  PostDetail.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/9/13.
//

import SwiftUI

struct PostDetail: View {
    let post: Post
    var body: some View {
        List{
            PostCell(post: post).listRowInsets(EdgeInsets())
            ForEach(1...10,id:\.self){ i in
                Text("评论\(i)")
            }
        }.navigationBarTitle("详情",displayMode: .inline)
      
        
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail(post: postList.list[0])
    }
}
