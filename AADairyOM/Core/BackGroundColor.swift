//
//  BackGroundColor.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import SwiftUI

struct BackGroundColor: View {
    var body: some View {
        Rectangle()
            .fill(Color("backgroundColor1"))
            .ignoresSafeArea(.all)
    }
}

struct BackGroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundColor()
    }
}
