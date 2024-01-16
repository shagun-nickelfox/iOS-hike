//
//  GradientButton.swift
//  Hike
//
//  Created by Nickelfox on 05/12/23.
//

import Foundation
import SwiftUI

struct GradientButton : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight
                ], startPoint: .top, endPoint: .bottom) :
                LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium
                ], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
