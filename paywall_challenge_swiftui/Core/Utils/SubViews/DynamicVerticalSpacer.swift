//
//  DynamicVerticalSpacer.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import SwiftUI

struct DynamicVerticalSpacer: View {

 let height : CGFloat



    var body: some View {
        Spacer()
      .frame(minWidth: 0, idealWidth: 0, maxWidth: 0, minHeight: (height/2), idealHeight: height, maxHeight: height, alignment: .center)
    }
}

struct DynamicVerticalSpacer_Previews: PreviewProvider {
    static var previews: some View {
        DynamicVerticalSpacer(height: 10)
    }
}
