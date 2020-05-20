//
//  BookView.swift
//  SwiftUI_Navigation
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI


struct BookView: View {
    
    var book: Book
    var proxy: GeometryProxy
    
    var body: some View {
        VStack {
            Text(book.title)
                .fontWeight(.bold)
                .font(Font.system(.headline, design: .rounded))
                .minimumScaleFactor(0.75)
                .padding(.top)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .foregroundColor(.white)
            
            Image(book.imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .padding()
                .shadow(color: .gray, radius: 20)
        }
        .padding()
        .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width),
               height: proxy.size.height - 50)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        
        GeometryReader{ proxy in
            BookView(book: Book.demoBooks.randomElement()!, proxy: proxy)
        }
        
    }
}
