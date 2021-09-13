//
//  PostCell.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/3.
//

import SwiftUI

struct PostCell: View {
    
    let post: Post
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            postHeaderView(post: post)
            Text(post.text).font(.system(size: 17))
            
            if !post.images.isEmpty{
                PostImageCell(images: post.images, width: UIScreen.main.bounds.width - 30, height:  UIScreen.main.bounds.width - 30)
            }
            
            Divider()
            
            HStack(alignment: .center, spacing: 0, content: {
                Spacer()
                PostCellToolbarButton(image: "message", text: post.commentCountText, color: .black, action: {print("click comment button")}).buttonStyle(BorderlessButtonStyle())
                
                Spacer()
                PostCellToolbarButton(image: "heart", text: post.likeCountText, color: .black, action: {print("click like button")}).buttonStyle(BorderlessButtonStyle())
                Spacer()
            })
            Rectangle().padding(.horizontal,-15)
                .frame(height:10).foregroundColor(Color(red: 238 / 255, green: 238 / 255, blue: 238 / 255))
        }).padding(.horizontal,15)
        .padding(.top,15)
        
       
       
        
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: postList.list[0])
    }
}

// -- add functions

func postHeaderView(post:Post) -> some View{
    return
        HStack{
            post.avatarImage
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(
                    PostVIPBadge(vip: post.vip).offset(x: 16, y: 16)
                )

            VStack(alignment: .leading, spacing: 5){
                Text(post.name).font(Font.system(size: 16))
                    .foregroundColor(Color(red: 243/255, green: 99/255, blue: 3/255))
                    .lineLimit(2)
                Text(post.date).font(Font.system(size: 11))
                    .foregroundColor(.gray)
            }
            .padding(.leading,10)
            Spacer()
            if !post.isFollowed{
                
                Button(action: {
                    print("click follow button")
                }, label: {
                    Text("关注")
                        .font(Font.system(size: 14))
                        .foregroundColor(.orange)
                        .frame(width: 50, height: 26  , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 13)
                                    .stroke(Color.orange,lineWidth: 1)
                        )
                }).buttonStyle(BorderlessButtonStyle())
            }
            
        }
}
