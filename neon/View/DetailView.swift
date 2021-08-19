//
//  DetailView.swift
//  neon
//
//  Created by Caitie on 2021/07/29.
//

import SwiftUI

struct DetailView: View {
    var album: Album
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                ZStack(){
                    Color("darkGrey")
                    VStack(spacing: 10){
                        ZStack(){
                            Color("neonPink")
                            Image(album.cover)
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350, height: 350, alignment: .trailing)
                        }
                        .frame(
                            maxWidth: 350,
                            maxHeight: 350
                        )
                        HStack(){
                            VStack(alignment: .leading){
                                Text(album.title)
                                    .bold()
                                    .foregroundColor(Color("neonPink"))
                                    .font(.system(size: 18))
                                Text(album.artist)
                                    .foregroundColor(Color("offWhite"))
                                    .font(.system(size: 16))
                            }
                            Spacer()
                            Text(String(album.length/60))
                                .foregroundColor(Color("offWhite"))
                                .font(.system(size: 12))
                                .opacity(0.5)
                        }
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 10, trailing: 0))
                        
                        
                        Text(album.description)
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 14))
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        
                        HStack{
                            Text("Genre: "+album.genre)
                                .foregroundColor(Color("offWhite"))
                                .font(.system(size: 14))
                            Spacer()
                        }
                        .frame(width: 350)
                        
                        HStack{
                            Text("Release date: 25 September 2020")
                                .foregroundColor(Color("offWhite"))
                                .font(.system(size: 14))
                            Spacer()
                        }
                        .frame(width: 350)
                    }
                    .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .top
                    )
                }
                .listStyle(PlainListStyle())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationTitle("")
                .navigationBarHidden(true)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .top
            )
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(album: AlbumData[0])
    }
}
