//
//  WelcomeScreen.swift
//  ListOfFeatures
//
//  Created by Pavankumar Arepu on 06/09/23.
//

import Foundation
import SwiftUI

/*

struct FeatureCategory: Identifiable {
    let id = UUID()
    let name: String
    let features: [String]
}

struct TabDetaiedViewTheme1: View {
    @State private var selectedTabIndex = 0 // Track the selected tab index
    
    let categories: [FeatureCategory] = [
        FeatureCategory(name: "Culture", features: ["Culture", "Attractions", "Languages"]),
        FeatureCategory(name: "Government", features: ["Services", "Minister", "Awards"]),
        FeatureCategory(name: "Information", features: ["Timeline", "HotNews", "AskAnyThing"]),
        FeatureCategory(name: "More", features: ["WomenPower", "Numbers", "Hoisting", "Quiz"])
    ]
    
    @State private var selectedFeatureIndex = 0 // Track the selected feature index
    
    var body: some View {
        NavigationView {
            VStack {
                // 1st Part (Top): Tab view to display features horizontally
                featureTabView
                
                // 2nd Part (Middle): Detailed view of the selected feature
                FeatureDetailView(features: categories[selectedTabIndex].features[selectedFeatureIndex])
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                // 3rd Part (Bottom): Existing TabBar items
                TabView(selection: $selectedTabIndex) {
                    ForEach(0..<categories.count) { index in
                        NavigationView {
                            FeatureListView(category: categories[index])
                        }
                        .tabItem {
                            Text(categories[index].name)
                            Image(systemName: "list.bullet")
                        }
                        .tag(index)
                    }
                }
            }
        }
    }
    
    var featureTabView: some View {
        Picker("Features", selection: $selectedFeatureIndex) {
            ForEach(0..<categories[selectedTabIndex].features.count, id: \.self) { index in
                Text(categories[selectedTabIndex].features[index])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
    }
}

struct FeatureListView: View {
    let category: FeatureCategory
    
    var body: some View {
        NavigationLink(destination: FeatureDetailView(features: category.features.first ?? "Hello")) {
//            Text("Show \(category.name) Features")
             //   .font(.largeTitle)
        }
    }
}

struct FeatureDetailView: View {
    let features: String
    
    var body: some View {
        VStack {
            // 2nd Part (Middle): Display the detailed view of the selected feature
            Text("Detailed View for \(features)")
                .font(.title)
                .padding()
            
            // Placeholder for feature details, you can replace it with your content
        }
        .navigationBarTitle("Features")
    }
}

struct TabDetaiedViewTheme1: PreviewProvider {
    static var previews: some View {
        TabDetaiedViewTheme1()
    }
}*/
