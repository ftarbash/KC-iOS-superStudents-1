//
//  ContentView.swift
//  rock scissors paper
//
//  Created by Fatma Alarbash on 25/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var randnum = 1
    @State private var randnum2 = 1
    
    @State private var score = 0
    @State private var score2 = 0
    
    @State private var showAlert:Bool = false
    @State var name = ""
    var body: some View {
        ZStack{Color.blue.ignoresSafeArea()
        VStack{
            //if let image = image.randomElement(){
            VStack{
                Text("Player1").foregroundColor(.white).font(.system(size: 30))
                Text("point:\t" + String(score)).foregroundColor(.white).font(.system(size: 30))
                Image("hand" + String(randnum) ).resizable().scaledToFit().rotationEffect(.degrees(90))}
            
                
           
                VStack{
                    Button {
                        self.randnum = Int.random(in: 1...3)
                        self.randnum2 = Int.random(in: 1...3)
                        
                        
                        
                        if self.randnum == 3 && self.randnum2 == 2 {
                            self.score += 1
                        }
                        if self.randnum2 == 3 && self.randnum == 2 {
                            self.score2 += 1 }
                            
                            if self.randnum == 2 && self.randnum2 == 1 {
                                self.score += 1
                        }
                        if self.randnum2 == 2 && self.randnum == 1 {
                            self.score2 += 1
                    }
                        if self.randnum == 1 && self.randnum2 == 3 {
                            self.score += 1
                    }
                        if self.randnum2 == 1 && self.randnum == 3 {
                            self.score2 += 1
                    }
                                if randnum == 3 {
                                    name = "Player1"
                                
                                }
                                if randnum2 == 3 {
                                    name = "Player2"
                                    
                                }
                        
                        if score == 3 || score2 == 3 {
                            showAlert = true }
                        
                    } label: {
                        Image("hand" + String(randnum2)).resizable().scaledToFit().rotationEffect(.degrees(270))
                    }.alert("congratulations \(name) 🥳", isPresented: $showAlert){
                        Button("ok", role: .cancel){
                            score = 0
                            score2 = 0
                        }
                    }
                    
                    Text("point:\t" + String(score2)).foregroundColor(.white).font(.system(size: 30))
                    Text("Player2").foregroundColor(.white).font(.system(size: 30))
                
                }
                        
                    
                    
                    
                    
                    
                    
                    
                    
                
                
                
                    
                
                        
                    

                }
                
            }
    }
    }
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
