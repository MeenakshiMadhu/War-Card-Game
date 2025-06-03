//
//  ContentView.swift
//  War Card Game
//
//  Created by Meenakshi Madhu on 6/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack  {
//            Color(.systemGreen)
//                .ignoresSafeArea()
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                    
                }
                
                Spacer()
                Image("button")
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.title)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.title)
                    }
                    Spacer()
                        
                }
                .foregroundStyle(Color.white)
                Spacer()
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
