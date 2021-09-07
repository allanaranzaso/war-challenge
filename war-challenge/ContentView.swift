//
//  ContentView.swift
//  war-challenge
//
//  Created by Allan Aranzaso on 2021-08-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5" //allows you to update value
    @State private var cpuCard = "card10"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack() {
            Image("background")
                .resizable()
            
            VStack() {
                Spacer()
                Image("logo")
                    .padding()
                Spacer()
                
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }.padding()
                
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand < cpuRand {
                        cpuScore += 1
                    } else {
                        // do nothing
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                
                HStack() {
                    Spacer()
                    
                    VStack() {
                        Text("Player")
                        Text(String(playerScore))
                            .padding()
                    }
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                    Spacer()
                    
                    VStack() {
                        Text("CPU")
                        Text(String(cpuScore))
                            .padding()
                    } // MARK: end of CPU VStack
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    Spacer()
                    
                }.foregroundColor(.white) // MARK: end of Score HStack
                Spacer()
            }.padding() // MARK: end of VStack
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // MARK: end of ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
