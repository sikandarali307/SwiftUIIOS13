//
//  Listview.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 12/10/2021.
//

import SwiftUI

struct Listviewown: View {
    var body: some View {
         
        VStack(spacing:20){
            HStack(spacing:20){
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }.font(.system(size: 18))
            HStack(spacing:20){
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                VStack{
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                 }
                
            }.font(.system(size: 20))
            
            HStack(spacing:20){
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }.border(.blue)
                .foregroundColor(.red)
                .font(.subheadline)
            Spacer()
            
            
        }
        
    }
}

struct Listview_Previews: PreviewProvider {
    static var previews: some View {
        Listviewown()
    }
}
