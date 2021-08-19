//
//  Filters.swift
//  neon
//
//  Created by Caitie on 2021/08/15.
//

import Foundation

class Filters: ObservableObject {
    @Published var sort = "Title"
    @Published var order = "Descending"
}
