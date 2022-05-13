 //
 //  ViewToggler.swift
 //  paywall_challenge_swiftui
 //
 //  Created by mehmet karanlık on 3.05.2022.
 //

import SwiftUI

struct ViewToggler<Content>: View  where Content : View  {
 @ViewBuilder var firstContent : ToggleView1
 @ViewBuilder var secondContent : Content
 @State var firstContentOpacity : Double = 1
 @State var secondContentOpacity : Double = 0
 @Binding var isSecondContentShown : Bool
 let duration : Double

 var body: some View {

  ZStack {
   firstContent
    .opacity(firstContentOpacity)
   secondContent
    .opacity(secondContentOpacity)
  }
  .onChange(of: isSecondContentShown) { newValue in
   if newValue == true {
    DispatchQueue.main.asyncAfter(deadline: .now() + (duration/2)) {
     withAnimation {
      secondContentOpacity = 1
     }
    }
    withAnimation(.linear(duration: (duration/2))) {
     firstContentOpacity = 0
    }
   }else {
    DispatchQueue.main.asyncAfter(deadline: .now() + (duration/2)) {
     withAnimation {
      firstContentOpacity = 1
     }
    }
    withAnimation(.linear(duration: (duration/2))) {
     secondContentOpacity = 0
    }
   }
  }
 }
}

struct ViewToggler_Previews: PreviewProvider {
 static var previews: some View {
  ViewToggler(firstContent: {

   ToggleView1()

  }, secondContent: {
   Text("asdasd")
   
  }, isSecondContentShown: .constant(false), duration: 1)


 }
}
