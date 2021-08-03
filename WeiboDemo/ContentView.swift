//
//  ContentView.swift
//  WeiboDemo
//
//  Created by wuzhiyong on 2021/8/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        f(name: "hello there")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func f(name:String) -> some View {
    return Text(name.uppercased()).padding()
}
