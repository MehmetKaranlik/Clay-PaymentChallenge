//
//  SliderCard.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import SwiftUI

struct SliderCard: View {
 let imageName : String
 let footerText : String
    var body: some View {
     VStack(spacing:0) {
      Image(imageName)
       .resizable()
       .frame(width: 162, height: 202, alignment: .center)
      Rectangle()
       .rectangleModifier(footerText)

     }.clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct SliderCard_Previews: PreviewProvider {
    static var previews: some View {
        SliderCard(
         imageName: ImageConstants.shared.all_collections,
         footerText: "footerText"
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}


extension Rectangle {
 fileprivate func rectangleModifier(_ footerText : String) -> some View {
  self
   .frame(width: 162, height: 30, alignment: .center)
   .foregroundColor(ColorConstants.shared.surface)
   .overlay(alignment: .center) {
    Text(footerText)
     .allRoundedTextExtension(font: .caption, fontWeight: .semibold,
                              color: ColorConstants.shared.secondary)
   }
 }


}
