//
//  MapBaloon.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 24/09/2021.
//

import SwiftUI

struct MapBaloon: Shape {
    func path(in rect: CGRect) -> Path {
      var path =  Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        return path
    }
    
}

struct MapBaloon_Previews: PreviewProvider {
    static var previews: some View {
        MapBaloon().frame(width: 200, height:400  )
            .border(Color.black )
            
    }
}
