 //
 //  PaywallView.swift
 //  paywall_challenge_swiftui
 //
 //  Created by mehmet karanlık on 3.05.2022.
 //

import SwiftUI

struct PaywallView: View {
  // MARK:  properties
 @StateObject var viewModel = PaywallViewModel()

  // MARK:  body
 var body: some View {
  ZStack {
   ColorConstants.shared.primaryVariant.ignoresSafeArea()
   VStack {
    Group {
     DynamicVerticalSpacer(height: 66)

     buildHeaderRow()
    DynamicVerticalSpacer(height: 80)
     buildSlider()
     DynamicVerticalSpacer(height: 81)
     buildFullAccesText()
     DynamicVerticalSpacer(height: 4)
     buildCancelText()
    }
    DynamicVerticalSpacer(height: 48)
    ToggleSwitchContainer { toggle in
     viewModel.isToggled = toggle
    }
    DynamicVerticalSpacer(height: 16)
    buildProceedButton()
    DynamicVerticalSpacer(height: 16)
    buildFooterText()
    DynamicVerticalSpacer(height: 59)
   }.ignoresSafeArea()
  }
 }


  // MARK:  Functions
 fileprivate func buildFooterText() -> some View {
  return DefaultViewToggler(firstContent: {
   Text("firstPriceKey")
    .footerTextExtension()
  }, secondContent: {
   Text("secondPriceKey")
    .footerTextExtension()

  }, isSecondContentShown: $viewModel.isToggled, duration: 0.1)
 }

 fileprivate func buildProceedButton() -> some View {
  return Button {} label: {
   DefaultViewToggler(firstContent: {
    Text("continueKey")
     .proceedButtonTextExtension()
   }, secondContent: {
    Text("freeTrialSuggestionKey")
     .proceedButtonTextExtension()
   }, isSecondContentShown: $viewModel.isToggled, duration: 0.1)
  }
  .buttonStyle(RoundedRectangleButtonStyle(buttonColor: ColorConstants.shared.secondary,
                                           width: UIScreen.main.bounds.size.width - 32 , height: 56))
 }

 fileprivate func buildCancelText() -> some View {
  return HStack(spacing:0) {
   Text("cancelKey")
    .allRoundedTextExtension(font: .callout, fontWeight: .regular,
                             color:ColorConstants.shared.secondary)
   Text("cancelFollowUpKey")
    .allRoundedTextExtension(font: .callout, fontWeight: .regular,
                             color: ColorConstants.shared.secondaryVariant)
  }
 }

 fileprivate func buildFullAccesText() -> some View {
  return Text("fullAccesKey")
   .allRoundedTextExtension(font: .largeTitle, fontWeight: .bold,
                            color: ColorConstants.shared.secondary)
 }

 fileprivate func buildSlider() -> some View {
  return Slider {
   ForEach(0..<9999999999) { index in
    SliderCard(imageName: viewModel.sliderCardImageNames[index % 4],
               footerText: viewModel.sliderCardNames[index % 4])
   }
  }
 }

 fileprivate func buildHeaderRow() -> some View {
  return HStack {
   Spacer()
   Text("alreadyPurchasedKey")
    .allRoundedTextExtension(font: .callout, fontWeight: .regular,
                             color: ColorConstants.shared.secondary)
   Spacer()
  }
  .overlay(alignment: .trailing) {
   Button {} label: {
    CircleButton {
     Image(systemName: "xmark")
      .allroundedImageExtension(width: 10, height: 10,
                                color: ColorConstants.shared.primary)
    }.padding(.trailing,16)
   }
  }
 }
}

// MARK:  preview
struct PaywallPreview : PreviewProvider {
 static var previews: some View {
  PaywallView()
 }
}



// MARK:  extensions
extension Text {

 fileprivate func footerTextExtension() -> some View {
  self
   .foregroundColor(ColorConstants.shared.secondary)
   .font(.callout)
   .fontWeight(.regular)
   .tracking(0.15)
 }

 fileprivate func proceedButtonTextExtension() -> some View {
  self
   .foregroundColor(ColorConstants.shared.primary)
   .font(.subheadline)
   .fontWeight(.semibold)
   .tracking(1.25)

 }

}


