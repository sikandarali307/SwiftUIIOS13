//
//  BarGraph.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 13/10/2021.
//

import SwiftUI

struct BarGraph: View {
    
    var downloads:[Download]
    
    var body: some View {
       
         
        VStack(spacing:20){
            HStack{
                Text("icon Download")
                    .fontWeight(.bold)
                
                Spacer()
                //making manu list
                Menu{
                    Button("Month"){}
                    Button("Year"){}
                    Button("Day"){}
                    
                }label: {
                    HStack(spacing:4){
                        Text("This Week")
                        Image(systemName: "arrowtriangle.down.fill").scaleEffect(0.7)
                        
                    }.font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                }
            }
            
            HStack(spacing:10){
                Capsule().fill(Color.blue)
                    .frame(width: 20, height: 8)
                Text("Download").font(.system(size: 14, weight: .bold))
                    .foregroundColor(.gray)
            }.frame(maxWidth:.infinity,alignment: .leading)
            //graphView
            BGraph().padding(.top,20)
            
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(20)
        .padding(.top,25)
    }
    
    
     @ViewBuilder
    func BGraph()->some View{
        GeometryReader{ proxy in
           
            ZStack{
                VStack(spacing:0){
                     
                    
                    ForEach(getGraphLine(),id: \.self){
                        line in
                        HStack(spacing:8){
                            Text("\(Int(line))")
                                .font(.caption)
                                .foregroundColor(.green)
                                .frame(height:20)
                            Rectangle().fill(Color.gray.opacity(0.2))
                                .frame(height:1)
                        }.frame(maxHeight:.infinity,alignment: .bottom)
                        //remoing text size
                         .offset(y:-7)
                    }
                }
                HStack{
                    
                   
                    
                    ForEach(downloads){
                        downloadme in
                        VStack(spacing:0){
                            VStack(spacing:5){
                                Capsule().fill(Color.pink)
                                Capsule().fill(Color.orange)
                                
                            }.frame(width:8)
                                .frame(height:getbarGraphHeight(point:downloadme.downloads, size: proxy.size))
                            Text(downloadme.weekday).font(.caption)
                                .frame(height:25,alignment:.bottom)
                        }.frame(maxWidth: .infinity,maxHeight:.infinity, alignment: .bottom)
                    }
                    
                }
                .padding(.leading ,30)
            }
           .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
                //.padding(.leading,30)
               
                
        }
        //fixed hieght
        .frame(height:190)
    }
    func getbarGraphHeight(point:CGFloat,size:CGSize)->CGFloat{
        let max = getMax()
        // 25 text height + 5 spacing
    
        let height = (point / max) * (size.height - 37)
        return height
    }
   // //get graph lines
    func getGraphLine()->[CGFloat]{
        let max = getMax()
        var lines :[CGFloat] = []
        lines.append(max)
        for index in 1...4 {
            ///dividing the  max by 4 and itration as index for graph line
            let progress = max / 4
            lines.append(max - (progress * CGFloat(index)))
        }
        return lines
    }

    //made view for geting max
    func getMax()->CGFloat{
        let max = downloads.max { first, scond in
            return  scond.downloads > first.downloads
        }?.downloads ?? 0
        return max
    }
    
}


struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
