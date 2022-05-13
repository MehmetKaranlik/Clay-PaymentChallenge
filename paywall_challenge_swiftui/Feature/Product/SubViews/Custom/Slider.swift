 //
 //  Slider.swift
 //  paywall_challenge_swiftui
 //
 //  Created by mehmet karanlık on 3.05.2022.
 //

import SwiftUI
import Combine

struct Slider<T:View>: View {
  // MARK:  properties
 @State var offSetValue  = 0
 @State var timer  = Timer.publish(every: 0.19, on: .main, in: .default).autoconnect()
 @ViewBuilder var content : T

  // MARK:  body
 var body: some View {

  ScrollView(.horizontal, showsIndicators: false) {
   LazyHStack(spacing: 16) {
    content
   }
   .disabled(true)
   .offset(CGSize(width: offSetValue, height: 0))
   .onReceive(timer) { _ in
    withAnimation(Animation.linear(duration: 0.2)) {
     offSetValue -= 6
    }
   }
  }
  .frame( height: 232, alignment: .center)
  .disabled(true)
 }




}

struct Slider_Previews: PreviewProvider {
 static var previews: some View {
  Slider {
   SliderCard(imageName: ImageConstants.shared.stickers, footerText: "footerText")
  }
  .previewLayout(.sizeThatFits)

 }
}
