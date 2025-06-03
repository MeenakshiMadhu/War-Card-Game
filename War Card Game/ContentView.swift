//
//  ContentView.swift
//  War Card Game
//
//  Created by Meenakshi Madhu on 6/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()

                Button {
                    deal()
                } label: {
                    Image("button")
                        
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title)
                    }
                    Spacer()
                        
                }
                .foregroundStyle(Color.white)
                Spacer()
            }
            
            
        }
    }
    
    func deal() {
//        print("Deal Cards!!")
        // Randomize player's card
        var playerCardVal = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardVal)
        
        // randomize CPU's card
        var cpuCardVal = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardVal)
        
        // update scores
        if playerCardVal > cpuCardVal {
            // add 1 to playerScore
            playerScore += 1
        }
        else if cpuCardVal > playerCardVal{
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
