//
//  Home.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 13/10/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        //Home Veiw Created
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing:18){
                
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 8) {
                       Spacer(minLength: 35)
                        Text("Weekly Icons")
                            .font(.title.bold())
                        Text("Reports Available")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        }
                   Spacer(minLength: 10)
                      Button{

                    }label: {
                         //button with badges
                        Image(systemName: "bell")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .overlay(
                                Text("2")
                                    .font(.caption2.bold())
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .background(Color.red)
                                    .clipShape(Circle())
                                    .offset(x: 11, y: -12),alignment: .topTrailing
                                   )
                            .offset(x:-2)
                            .padding(15)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                }
                
                //graph view
                BarGraph(downloads: downloads)
                //user view
                HStack(spacing:0){
                    userProgress(title:  "Sikandar", color: Color.purple, image: "person", progress: 68)
                    userProgress(title:  "Umair", color: Color.green, image: "person", progress: 85)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(18)
                
                
                 //// most downloads
                VStack{
                    HStack{
                        Text("Most Downloads")
                            .font(.callout.bold())
                        
                        Spacer()
                        
                        Menu{
                            Button("More"){}
                            Button("Extra"){}
                             
                        }label: {
                            Image(systemName: "list.dash")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 18, height: 18 )
                                .foregroundColor(.primary)
                        }
                    }
                    HStack(spacing:15){
                        Image(systemName: "flame.fill")
                            .font(.title2)
                            .foregroundColor(.red)
                            .padding(12)
                            .background(
                                Color.gray.opacity(0.25)
                                    .clipShape(Circle())
                            )
                        VStack(alignment:.leading, spacing: 8){
                            Text("Fire Flame")
                                .fontWeight(.bold)
                            Text("1229 Downloads")
                                .font(.caption2.bold())
                                .foregroundColor(.gray)
                            
                        }
                        Spacer(minLength: 10)
                        
                        Image(systemName: "square.and.arrow.down.on.square.fill")
                            .font(.title2)
                            .foregroundColor(.green)
                    }
                    .padding(.top,20)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(18)
                //.padding(.vertical,10)
            }.padding()
        }
    }
    @ViewBuilder
    func userProgress(title:String,color:Color,image:String,progress:CGFloat)->some View{
        HStack{
            Image(systemName: image)
                .font(.title2)
                .foregroundColor(color)
                .padding(10)
                .background(
                    ZStack{
                    Circle().stroke(Color.gray.opacity(0.3),lineWidth: 2)
                    Circle().trim(from: 0, to: progress/100)
                        .stroke(color,lineWidth: 2)
                    }
                )
            VStack(alignment:.leading, spacing: 8 ){
                Text("\(Int(progress))%").fontWeight(.bold)
                 }
            Text(title).font(.caption2.bold())
                .foregroundColor(.gray)
            
        }
        .frame(maxWidth:.infinity,alignment: .leading)
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
