//
//  PostCell.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/3.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        
        
        HStack{
            Image(uiImage: UIImage(named: "8697cf1ely8gashxj3b09j20u00u040v.jpg")!)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(
                    PostVIPBadge().offset(x: 16, y: 16)
                )

            VStack(alignment: .leading, spacing: 5){
                Text("Hello, World!").font(Font.system(size: 16))
                    .foregroundColor(Color(red: 243/255, green: 99/255, blue: 3/255))
                    .lineLimit(2)
                Text("2021-08-03 20:30").font(Font.system(size: 11))
                    .foregroundColor(.gray)
            }
            .padding(.leading,10)
            
            Spacer()
            
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
            })
            
        }
        
        
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
