//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Iurie Guzun on 2021-01-20.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { pos in
                Text("Number \(pos)")
                    .alignmentGuide(.leading) { _ in CGFloat(pos) * 20 }
            }        }
        .background(Color.red)
        .frame(width: 400, height: 400)
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
