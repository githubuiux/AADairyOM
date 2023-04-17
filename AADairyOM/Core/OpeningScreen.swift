//
//  OpeningScreen.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import SwiftUI

struct OpeningScreen: View {
    var body: some View {
        ZStack {
            BackgroundDegrade()
            HStack {
                VStack(alignment: .leading) {
                    Text("Anonym")
                        .font(.largeTitle).bold()
                        .foregroundColor(.white)
                    Text("AudioDairy")
                        .font(.largeTitle).bold()
                        .foregroundColor(.white)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 120, height: 25)
                            .offset(y: 20)
                            .foregroundColor(Color("GradientColor1"))
                        
                        Text("Of Me")
                            .font(.largeTitle).bold()
                        .foregroundColor(.white)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 30)
            
        }
    }
}

struct OpeningScreen_Previews: PreviewProvider {
    static var previews: some View {
        OpeningScreen()
    }
}
