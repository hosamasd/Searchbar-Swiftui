//
//  CardView.swift
//  Searchbar Swiftui
//
//  Created by Hossam on 11/30/20.
//

import SwiftUI

struct CardView: View {
    
    var item:AppItem = apps[0]
    @State var show:Bool = false
    
    var body: some View {
       
        
        HStack(spacing:15) {
                
                Image(item.name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:65,height:65)
                
                VStack(spacing:8) {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                         
                            
                            Text(item.name)
                                .font(.title2)
                        
                    
                    Text(item.source)
                        .font(.caption)
                        .foregroundColor(.gray)
                        
//                            Spacer(minLength: 0)
                            
                        }
                        
                        Spacer(minLength: 10)
                        
                        VStack {
                            
                            Button(action: {self.show.toggle()}, label: {
                                Text(show ? "Open" : "Get")
                                    .fontWeight(.heavy)
                                    .padding(.vertical,8)
                                    .padding(.horizontal,20)
                                    .background(Color.primary.opacity(0.1))
                                    .clipShape(Capsule())
                            })
                            
                            Text("In App Purchases")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        
                    }
                    
                    Divider()
                      
                }
                
              
                
               
            }
        .padding(.horizontal)
            
           
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
