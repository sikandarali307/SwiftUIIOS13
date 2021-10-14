//
//  BaseView.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 12/10/2021.
//

import SwiftUI

struct BaseView: View {
    
    @State var currenttab = "home"
    /// we have native one as well
    init(){
        UITabBar.appearance().isHidden =  true
            }
    
    /// Description
    var body: some View {
        // Text("vrbrrdfv")
        //  here we are going to make Tabbar
        VStack(spacing:0){
            
            TabView(selection: $currenttab) {
                Home()
                    .modifier(BGModifire())
                    .tag("home")
                     
                Text("Chat")
                    .modifier(BGModifire())
                    .tag("chat")
                     
                Text("Graph")
                    .modifier(BGModifire())
                    .tag("graph")
                 
                Text("Setting")
                    .modifier(BGModifire())
                    .tag("settings")
                    
            }
            HStack(spacing:40){
                //making tab actions
                tabButton(image: "home")
                tabButton(image: "chat")
                Button{

                }label: {
                    Image(systemName: "plus").font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding(22)
                        .background(
                        Circle()
                            .fill(Color("Tab"))
                            .shadow(color: Color("Tab").opacity(0.15), radius: 5, x: 0, y: 8)
                    )

                }
                 //moving button little bit up
                .offset(y:-20)
                tabButton(image: "graph")
                tabButton(image: "settings")
                
            }  .frame(maxWidth: .infinity)
                .padding(.top,-10)
            
                .background(
                            Color("BG").ignoresSafeArea()
                            )
    }
    }
    
    @ViewBuilder
    func tabButton(image: String) ->some View{
        Button{
            withAnimation{
                currenttab = image
            }
        }label: {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(
                    currenttab == image ? Color.black : Color.gray.opacity(0.8)
                )
            
            
        }
    }
    
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
struct BGModifire:ViewModifier{
 
    func body(content: Content) -> some View {
        content.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BG")).ignoresSafeArea()
    }
    
}
