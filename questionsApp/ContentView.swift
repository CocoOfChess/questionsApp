//
//  ContentView.swift
//  questionsApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var welcomeText = "Hello and welcome, today I will be asking a few questions"
    
    var body: some View {
        NavigationStack {
            
        VStack {
            Text(welcomeText)
                .foregroundColor(Color(hue: 0.707, saturation: 0.683, brightness: 0.796))
                .multilineTextAlignment(.center)
                .font(.title2)
            TextField("First Question: What is your name?", text: $name)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)
                .cornerRadius(15)
            Button("Submit") {
                $name
                print(name)
                welcomeText = "Welcome \(name), click this button to continue onto the next part of the quiz"
                
            }
                }
        .padding()
                }
        
        }
        
        }
            
            
            
            
                
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
