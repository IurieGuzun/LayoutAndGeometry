//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Iurie Guzun on 2021-01-20.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

extension VerticalAlignment {
    struct MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }

    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName){
            VStack {
                Text("@twostraws")
                 .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                Image("Swift")
                    .resizable()
                    .frame(width: 64, height: 64)
            }

            VStack {
                Text("Full name:")
                Text("Iurie Guzun")
                     .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
