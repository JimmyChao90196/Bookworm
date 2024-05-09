//
//  Model.swift
//  SwiftUI-Bookworm
//
//  Created by JimmyChao on 2024/5/9.
//

import Foundation
import SwiftData

// MARK: Model -
@Model
class Book {
    init(title: String, author: String, genre: String, review: String, rating: Int) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
    }

    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
}
