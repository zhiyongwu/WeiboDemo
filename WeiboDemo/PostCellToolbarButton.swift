//
//  PostCellToolbarButton.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/11.
//

import SwiftUI

struct PostCellToolbarButton: View {
    let image:String
    let text:String
    let color:Color
    let action : () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack(alignment: .center, spacing: 5, content: {
                Image(systemName: image).resizable().scaledToFit()
                    .frame(width: 18, height: 18, alignment: .center)
                Text(text).font(.system(size: 15))
            }).foregroundColor(color)
        })
    }
}

struct PostCellToolbarButton_Previews: PreviewProvider {
    static var previews: some View {
        PostCellToolbarButton(image: "heart", text: "点赞", color: .red, action: {print("点赞")})
    }
}
