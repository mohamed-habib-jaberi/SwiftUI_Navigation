//
//  ContentView.swift
//  SwiftUI_Navigation
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            ZStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        ForEach(Book.demoBooks) { book in
                            GeometryReader { proxy in
                                
                                NavigationLink(destination: BookDetailView(book: book)) {
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
                                            .resizable()
                                            .scaledToFit()
                                            .padding()
                                            .shadow(color: .gray, radius: 20)
                                    }
                                    .padding()
                                    .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width),
                                           height: proxy.size.height - 50)
                                }
                                    
                                    
                                    
                                    
                                .background(Image(book.imageName)
                                .resizable()
                                .scaledToFill()
                                .opacity(1)
                                .overlay(Color.myGreen)
                                .blendMode(.multiply)
                                .blur(radius: 1))
                                    
                                .cornerRadius(10)
                                .padding(.vertical)
                                .shadow(radius: 3)
                                .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 40), axis: (x: -4, y: -3, z: -3))
                                
                            }
                            .frame(width: 200, height: 300)
                        }
                    }
                }
                Spacer()
                    .layoutPriority(1)
            }
            .background(Color.black)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("RW Swift Books")
        }
        
    }
    
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let myGreen = Color(red: 21/255, green: 132/255, blue: 67/255)
}
