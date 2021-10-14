//
//  Animatedbtn.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 12/10/2021.
//

import SwiftUI

struct Animatedbtn: View {
    @State var color = Color.pink
    @State var onTap = true
    var body: some View {
        ZStack{
            Circle().frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(color)
                .offset(y: self.onTap ? -300 : 0)
                .animation(.default)
            
            
            Button(action:{ontabbtn()} ) {
                Text("click over here")
            }.offset(y:300)
        }
    }
    func ontabbtn(){
        self.onTap.toggle()
        if onTap {
            color = .pink
        }else{
            color = .green
        }
        
    }
}

struct Animatedbtn_Previews: PreviewProvider {
    static var previews: some View {
        Animatedbtn()
    }
}
