//
//  Form.swift
//  SwiftUI-Bookworm
//
//  Created by JimmyChao on 2024/5/9.
//

import SwiftUI
import SwiftData

struct AddBook: View {
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var author: String = ""
    @State var genre: String = "Fantasy"
    @State var rating: Int = 3
    @State var review: String = ""
    
    let genres = [
        "Fantasy,", 
        "Horror",
        "Kids",
        "Mystery",
        "Peotry",
        "Romance",
        "Thriller"]
    
    var body: some View {
        NavigationStack {
            
            Section {
                TextField("Name of the book", text: $title)
                TextField("Author of the book", text: $author)
                
                Picker("The genre of the book", selection: $genre) {
                    ForEach(genres, id: \.self) {
                        Text("\($0)")
                    }
                }
                
                Section("write an review") {
                    TextEditor(text: $review)
                    RatingUnitView(rating: $rating)
                }
                
                Section {
                    Button("Save") {
                        let newBook = Book(
                            title: title,
                            author: author,
                            genre: genre,
                            review: review,
                            rating: rating)
                        
                        context.insert(newBook)
                        
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

#Preview {
    AddBook()
}
