//
//  TabDetailedView2.swift
//  ListOfFeatures
//
//  Created by Pavankumar Arepu on 06/09/23.
//

import Foundation

import SwiftUI

struct FeatureCategory: Identifiable {
    let id = UUID()
    let name: String
    let features: [String]
}
struct TabDetaiedViewTheme2: View {
    @State private var selectedTabIndex = 0 // Track the selected tab index
    @State private var selectedFeature = "" // Track the selected feature name
    
    let categories: [FeatureCategory] = [
        FeatureCategory(name: "Culture", features: ["Culture", "Attractions", "Languages"]),
        FeatureCategory(name: "Government", features: ["Services", "Minister", "Awards"]),
        FeatureCategory(name: "Information", features: ["Timeline", "HotNews", "AskAnyThing"]),
        FeatureCategory(name: "More", features: ["WomenPower", "MagicNumbers", "FlagHoisting"])
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                // 1st Part (Top): Tab view to display features horizontally
                featureTabView
                
                // 2nd Part (Middle): Detailed view of the selected feature
                FeatureDetailView(features: categories[selectedTabIndex].features, selectedFeature: $selectedFeature)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                // 3rd Part (Bottom): Existing TabBar items
                TabView(selection: $selectedTabIndex) {
                    ForEach(0..<categories.count) { index in
                        NavigationView {
                            FeatureListView(category: categories[index], selectedFeature: $selectedFeature)
                        }
                        .tabItem {
                            Text(categories[index].name)
                            Image(systemName: "globe.americas.fill")
                        }
                        .tag(index)
                    }
                }
            }
        }
    }
    
    var featureTabView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories[selectedTabIndex].features, id: \.self) { feature in
                    Button(action: {
                        // Handle tapping of feature in the tab view
                        selectedFeature = feature
                    }) {
                        Text(feature)
                            .font(.headline)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(selectedFeature == feature ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}

struct FeatureListView: View {
    let category: FeatureCategory
    @Binding var selectedFeature: String
    
    var body: some View {
        NavigationLink(destination: FeatureDetailView(features: category.features, selectedFeature: $selectedFeature)) {
            //Text("Show \(category.name) Features")
              //  .font(.largeTitle)
        }
    }
}

struct FeatureDetailView: View {
    let features: [String]
    @Binding var selectedFeature: String
    
    var body: some View {
        VStack {
            // Display the feature name
            Text("Detailed View of \(selectedFeature)")
                .font(.title)
                .padding()
            
            // Placeholder for feature details, replace with your content
            Image("Aditya1") // Load the "Aditya1" image
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 400, maxHeight: .infinity)
        }
//        .navigationBarTitle("Features")
    }
}


struct TabDetaiedViewTheme2_Preview: PreviewProvider {
    static var previews: some View {
        TabDetaiedViewTheme2()
    }
}
