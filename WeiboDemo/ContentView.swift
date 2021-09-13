//
//  ContentView.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            PostListView()
                .navigationBarTitle("Title")
                .navigationBarHidden(true)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
