//
//  HelpView.swift
//  SwiftUI_Navigation
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct HelpView: View {
  var body: some View {
    
    ZStack {
      VStack {
        Image("Swift Shopping")
          .resizable()
          .scaledToFit()
        
        Text("For more help go to raywenderlich.com")
          .font(Font.system(.largeTitle, design: .rounded))
          .foregroundColor(.white)
          .fontWeight(.bold)
          .lineLimit(nil)
      }
      .padding()
      
      Spacer()
      .layoutPriority(2)
    }
    .background(Image("Team")
      .renderingMode(.original)
      .resizable()
      .scaledToFill()
      .opacity(1)
      .overlay(Color.myGreen)
      .blendMode(.multiply)
      .blur(radius: 1))
      
      .edgesIgnoringSafeArea(.all)
  }
  
}
struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
