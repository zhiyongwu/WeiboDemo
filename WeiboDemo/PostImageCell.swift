//
//  PostImageCell.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/9/13.
//

import SwiftUI

private let kImageSpace :CGFloat = 6

struct PostImageCell: View {
    let images: [String]
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        
            if images.count == 1{
                loadImageFromname(name: images[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height, alignment: .center)
                    .clipped()
            }else if images.count == 2{
                PostImageCellRow(images: images, width: width)
            }else if images.count == 3{
                PostImageCellRow(images:images,width:width)
            }else if images.count == 4{
                VStack(spacing:kImageSpace){
                    PostImageCellRow(images:Array(images[0...1]),width:width)
                    PostImageCellRow(images:Array(images[1...2]),width:width)

                }
            }else if images.count == 5{
                VStack(spacing:kImageSpace){
                    PostImageCellRow(images:Array(images[0...1]),width:width)
                    PostImageCellRow(images:Array(images[2...4]),width:width)

                }
            }else if images.count == 6{
                VStack(spacing:kImageSpace){
                    PostImageCellRow(images:Array(images[0...2]),width:width)
                    PostImageCellRow(images:Array(images[3...5]),width:width)

                }
            }
       
    }
}

struct PostImageCellRow :View{
    let images:[String]
    let width : CGFloat
    
    var body:some View{
        HStack(alignment: .center, spacing: 6, content: {
            ForEach(images,id:\.self) {image in
                loadImageFromname(name: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: (self.width - 6 * CGFloat(self.images.count - 1)) / CGFloat(self.images.count), height:(self.width - 6 * CGFloat(self.images.count - 1)) / CGFloat(self.images.count) , alignment: .center)
                    .clipped()
                    
            }
        })
    }
}

struct PostImageCell_Previews: PreviewProvider {
    static var previews: some View {
        let images = postList.list[5].images
        let width = UIScreen.main.bounds.width - 30
        let height = (UIScreen.main.bounds.width - 30) * 0.75
        Group{
            PostImageCell(images: Array(images[0...0]),width: width,height: height)
            PostImageCell(images: Array(images[0...1]),width: width,height: height)
            PostImageCell(images: Array(images[0...2]),width: width,height: height)
            PostImageCell(images: Array(images[0...3]),width: width,height: height)
            PostImageCell(images: Array(images[0...4]),width: width,height: height)
            PostImageCell(images: Array(images[0...5]),width: width,height: height)
        }
    }
}
