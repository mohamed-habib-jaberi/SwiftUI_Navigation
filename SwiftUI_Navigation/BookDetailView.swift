//
//  BookDetailView.swift
//  SwiftUI_Navigation
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
            Image(book.imageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book.demoBooks.randomElement()!)
    }
}
