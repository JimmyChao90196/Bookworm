//
//  RatingUnitView.swift
//  SwiftUI-Bookworm
//
//  Created by JimmyChao on 2024/5/9.
//

import SwiftUI
import SwiftData

struct RatingUnitView: View {
    
    @Binding var rating: Int
    
    var label = ""
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                Button {
                    rating = number
                } label: {
                    image(for: number)
                        .foregroundStyle(number > rating ? offColor : onColor)
                }
                .buttonStyle(PlainButtonStyle())
                
            }
        }
    }
    
    // Helper function
    func image(for number: Int) -> Image {
        if number > rating {
            offImage ?? onImage
        } else {
            onImage
        }
    }
}

#Preview {
    RatingUnitView(rating: .constant(4))
}
