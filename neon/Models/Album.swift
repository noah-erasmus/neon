//
//  Song.swift
//  neon
//
//  Created by Caitie on 2021/08/04.
//

import SwiftUI

struct Album: Identifiable{
    var id = UUID()
    var title: String
    var genre: String
    var artist: String
    var length: TimeInterval
    var cover: String
    var description: String
}
