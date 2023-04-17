//
//  BackgroundDegrade.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import SwiftUI

struct BackgroundDegrade: View {
    var body: some View {
        Rectangle()
            .fill(.linearGradient(colors: [Color("GradientColor1"), Color("GradientColor2")], startPoint: .topTrailing, endPoint: .bottomLeading))
            .ignoresSafeArea(.all)
    }
}

struct BackgroundDegrade_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundDegrade()
    }
}
