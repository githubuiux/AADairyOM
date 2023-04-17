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
                    Spacer()
                    Text("Anonym")
                        .font(.title2).bold()
                        .foregroundColor(.white)
                    Text("AudioDairy")
                        .font(.system(size:55))
                        .font(.largeTitle).bold()
                        .foregroundColor(.white)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 160, height: 20)
                            .offset(y: 15)
                            .foregroundColor(Color("GradientColor1"))
                        
                        Text("Of Me")
                            .font(.system(size:55))
                            .bold()
                            .foregroundColor(.white)
                    }
                    .offset(y: -35)
                    Spacer()
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
