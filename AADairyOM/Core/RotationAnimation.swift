//
//  RotationAnimation.swift
//  AADairyOM
//
//  Created by Levent on 18.04.2023.
//

import SwiftUI

struct RotationAnimation: View {
    @State private var isRotating = 0.0
    var body: some View {
        Image(systemName: "gear")
            .font(.system(size: 72))
            .rotationEffect(.degrees(isRotating))
            .onAppear{
                withAnimation(.linear(duration: 1)
                    .speed(0.1).repeatForever(autoreverses: false)) {
                        isRotating = 360.0
                    }
            }
    }
}

struct RotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnimation()
    }
}
