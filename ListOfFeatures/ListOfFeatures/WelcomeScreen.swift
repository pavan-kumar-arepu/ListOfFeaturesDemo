//
//  WelcomeScreen.swift
//  ListOfFeatures
//
//  Created by Pavankumar Arepu on 06/09/23.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    @State private var isExploreButtonTapped = false // Track if the Explore button is tapped
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.green, .white, .green]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea(.all)
                
                GeometryReader { geo in
                    Image("Aditya1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        //.scaledToFill()
                       // .edgesIgnoringSafeArea(.all)
                        //.aspectRatio(1, contentMode: .fit)
                }
                //.offset(x: 0, y: 120)
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        // Set isExploreButtonTapped to true when Explore button is tapped
                        isExploreButtonTapped = true
                    }) {
                        Text("Explore")
                            .font(.headline) // Reduce the font size
                            .padding(.horizontal, 20) // Add horizontal padding
                            .padding(.vertical, 10) // Reduce the vertical padding
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8) // Smaller corner radius
                    }
                    .padding()
                }
                .navigationBarTitle("India Features")
                
                // Navigate to TabDetaiedView when Explore button is tapped
                NavigationLink("", destination: TabDetaiedViewTheme2(), isActive: $isExploreButtonTapped)
                    .hidden()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
