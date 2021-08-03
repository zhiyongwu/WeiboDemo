//
//  PostVIPBadge.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/3.
//

import SwiftUI

struct PostVIPBadge: View {
    var body: some View {
        Text("V")
            .bold()
            .font(Font.system(size: 11))
            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.yellow)
            .background(Color.red)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(RoundedRectangle(cornerRadius: 7.5)
                        .stroke(Color.white,lineWidth: 1)
            )
    }
}

struct PostVIPBadge_Previews: PreviewProvider {
    static var previews: some View {
        PostVIPBadge()
    }
}
