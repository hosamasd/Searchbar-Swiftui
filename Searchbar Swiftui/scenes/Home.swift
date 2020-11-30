//
//  Home.swift
//  Searchbar Swiftui
//
//  Created by Hossam on 11/30/20.
//

import SwiftUI

struct Home: View {
    
    @Binding var filteredItems : [AppItem]
//    @State var filteredApps = apps
    
    var body: some View {
       
        
        ScrollView{
            
            VStack(spacing:15) {
                
                ForEach(filteredItems) {app in
                    
                    CardView(item: app)
                }
                
            }
            .padding()
            
        }
        
    }
}
