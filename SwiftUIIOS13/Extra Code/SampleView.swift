//
//  ContentView.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 24/09/2021.
//

import SwiftUI

struct SampleView: View {
    var body: some View {
        var gradcolor = Gradient(colors: [Color.pink,Color.purple])
        VStack(spacing:60 ){
            Button{
                print("Linnear gradiant tapped")
            } label: {
                Text("Linear Button")
                    .bold()
                    .frame(width:280  , height: 50)
                    .foregroundColor(.blue)
                    .overlay(Capsule().stroke(.blue))
                 
            }
            Button{
                print("Linnear gradiant tapped")
            } label: {
                Text("Radial Gradiant")
                    .bold()
                    .frame(width:160, height: 160)
                    .foregroundColor(.white)
                    .background(RadialGradient(colors: [Color.pink,Color.purple], center: .center, startRadius: 5, endRadius: 100))
                    .clipShape(Circle())
                
            }
            Button{
                print("Linnear gradiant tapped")
            } label: {
                Text("Angular Gradiant")
                    .bold()
                    .frame(width:160, height: 160)
                    .foregroundColor(.white)
                    .background(AngularGradient(colors: [Color.pink,Color.purple , .pink,.green,.blue,.red ] ,center:.center))
                    .clipShape(Circle())
                
            }
        }
     }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SampleView()
         
        }
    }
}
