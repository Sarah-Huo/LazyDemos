//
//  ContentView.swift
//  LazyDemos
//
//  Created by Huo, Sarah Z on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var columns = [
        //        GridItem(.fixed(110)),
        //        GridItem(.fixed(110)),
        //        GridItem(.fixed(110))
        
        GridItem(.flexible(maximum: 110)),
        GridItem(.flexible(maximum: 200))
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: columns) {
                ForEach(0..<1000) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }
            }
        }
        .padding()
    }
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

