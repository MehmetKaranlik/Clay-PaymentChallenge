//
//  ToggleSwitchContainer.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import SwiftUI

struct ToggleSwitchContainer: View {
 // MARK:  properties
 @State var isToggled: Bool = false
 var onToggled : (Bool) -> Void

 // MARK:  body
 var body: some View {
     ZStack(alignment:.leading) {
      buildBackgroundContainer()
      buildContainerItems()
     }
     .padding(.horizontal,16)
    }



 // MARK:  functions


 fileprivate func buildContainerItems() -> some View {
  return HStack(spacing:0) {
   buildToggledItems()
   Spacer()
   Toggle(isOn: $isToggled) {
   }
  }
  .onChange(of: isToggled, perform: { newValue in
   onToggled(newValue)
  })
  .padding(.leading,32)
  .padding(.trailing,24)
 }

 fileprivate func buildToggledItems() -> some View {
  return ViewToggler(firstContent: {
   ToggleView1()
  }, secondContent: {
   Text("enabledFreeTrialKey")
    .allRoundedTextExtension(font: .subheadline, fontWeight: .semibold, color: ColorConstants.shared.secondary)
    .frame(width: 200,alignment: .leading)
  }, isSecondContentShown: $isToggled, duration: 0.1)
 }

 fileprivate func buildBackgroundContainer() -> some View {
  return RoundedRectangle(cornerRadius: 100)
   .stroke(ColorConstants.shared.surface, lineWidth: 2)
   .frame(width: UIScreen.main.bounds.size.width - 32 , height: 56, alignment: .center)
  
 }
}


// MARK:  preview
struct ToggleSwitchContainer_Previews: PreviewProvider {
    static var previews: some View {
     ToggleSwitchContainer(onToggled: { _ in
      
     })
      .preferredColorScheme(.dark)
    }
}



struct ToggleView1 : View {
 var body: some View {
  VStack(alignment:.leading,spacing: 0) {
   Text("notSureYetKey")
    .allRoundedTextExtension(font: .subheadline, fontWeight: .semibold, color: ColorConstants.shared.secondary)
   DynamicVerticalSpacer(height: 4)
   Text("enableFreeTrialKey")
    .allRoundedTextExtension(font: .subheadline, fontWeight: .semibold, color: ColorConstants.shared.secondaryVariant)
  }
  .frame(width: 200,  alignment: .leading)
 }
}
