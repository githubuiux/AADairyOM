//
//  VoiceAnimation.swift
//  AADairyOM
//
//  Created by Levent on 18.04.2023.
//

import SwiftUI

struct VoiceAnimation: View {
    @State private var drawingHeight = true
    var animation: Animation {
        return .linear(duration: 0.5).repeatForever()
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Audio")
                .bold()
            HStack {
                bar(low: 0.4)
                    .animation(animation.speed(1.5), value: drawingHeight)
                bar(low: 0.3)
                    .animation(animation.speed(1.2), value: drawingHeight)
                bar(low: 0.5)
                    .animation(animation.speed(1.0), value: drawingHeight)
                bar(low: 0.3)
                    .animation(animation.speed(1.7), value: drawingHeight)
                bar(low: 0.5)
                    .animation(animation.speed(1.0), value: drawingHeight)
            }
            .frame(width: 80)
            .onAppear{
                drawingHeight.toggle()
        }
    }
}

func bar(low: CGFloat = 0.0, high: CGFloat = 1.0) -> some View {
    RoundedRectangle(cornerRadius: 3)
        .fill(.indigo)
        .frame(height: (drawingHeight ? high: low) * 64)
        .frame(height: 64, alignment: .bottom)
    }
}

struct VoiceAnimation_Previews: PreviewProvider {
    static var previews: some View {
        VoiceAnimation()
    }
}
