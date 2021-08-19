//
//  AlbumGridView.swift
//  neon
//
//  Created by Caitie on 2021/08/13.
//

import SwiftUI

struct AlbumGridView: View {
    var album: Album
    var body: some View {
        ZStack {
            Color("darkGrey")
            VStack {
                Image(album.cover)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 170, alignment: .leading)
                Text(album.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .font(.system(size: 16))
                Text(album.artist)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
        }
        .frame(width: 185, height:230, alignment: .leading)
    }
}

struct AlbumGridView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumGridView(album: AlbumData[0])
            .previewLayout(.sizeThatFits)
    }
}
