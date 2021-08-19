//
//  AlbumRowView.swift
//  neon
//
//  Created by Caitie on 2021/08/04.
//

import SwiftUI

struct AlbumRowView: View {
    
    var album: Album
    
    var body: some View {
        ZStack{
            Color("darkGrey")
            HStack(spacing:20){
                Image(album.cover)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .leading)
                VStack(alignment:.leading, spacing: 0){
                    Text(album.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .font(.system(size: 16))
                    Text(album.artist)
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                }
                Spacer()
            }
            .padding(.leading, 10)
        }
        .frame(width: .infinity, height: 65, alignment: .leading)
    }
}

struct AlbumRowView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRowView(album: AlbumData[0])
            .previewLayout(.sizeThatFits)
    }
}
