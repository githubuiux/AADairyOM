//
//  ContentView.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        OpeningScreen()
        MainPage()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        NavigationView {
            MainPage()
        }
    }
}
