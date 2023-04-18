//
//  RecordScreen.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import SwiftUI

struct RecordScreen: View {
    var body: some View {
        
        VStack {
            HStack() {
                Image("recordButton")
//                Image(systemName: "play.circle")
                    .resizable()
                    .foregroundColor(Color("GradientColor1"))
                    .frame(width: 48, height: 48)
                    .padding()
        
                VStack(alignment: .leading){
                    Text("Bu birinci kayıt")
                        .font(.title)
                        .bold()
                    Text("Kısaca bu içerikte ne var?")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                Spacer()
                
                Image(systemName: "ellipsis")
                    .padding()

                Spacer()
            }
            Divider()
//                .padding()
        }
        
    }
}

struct RecordScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecordScreen()
    }
}
