//
//  MainPage.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import SwiftUI

struct MainPage: View {
    @State private var selectedFilter : MainPageModel = .popular
    @Namespace var animation

    var body: some View {
        
        ZStack {
            BackGroundColor()

            VStack(alignment: .leading){
                HStack {
//                    Image("recordButton")
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                    .foregroundColor(Color("GradientColor1"))
                    Spacer()
                }
                Text("BROWSER")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                    .padding(.vertical,20)
                    .padding(.bottom, 20)
                
                HStack (alignment: .center){
                    ForEach(MainPageModel.allCases, id: \.rawValue) { item in
                        VStack{
                            Text(item.title)
                                .font(.title2)
                                .foregroundColor(selectedFilter == item ? .black : .gray)
                            
                            if selectedFilter == item {
                                Capsule()
                                    .foregroundColor(Color(.systemBlue))
                                    .frame(height: 3)
                                    .matchedGeometryEffect(id: "Filter", in: animation)
                            } else {
                                Capsule()
                                    .foregroundColor(Color(.clear))
                                    .frame(height: 3)
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut){
                                self.selectedFilter = item
                            }
                        }
                    }
                }
                .overlay(Divider()
                .offset(x:0, y: 20))
                Spacer()

                LazyVStack {
                    ForEach(0 ..< 5) { item in
                        RecordScreen()
                    }
                }
                
            }
            .padding()

            

        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
