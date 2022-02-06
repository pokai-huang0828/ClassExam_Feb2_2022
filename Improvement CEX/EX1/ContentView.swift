//
//  ContentView.swift
//  EX1
//
//  Created by PoKai Huang on 2022-02-06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var nationality = ""
    @State var showtext = false
    @State private var errorMessage = ""
    
    var body: some View {
        ZStack{
            Image("appBG")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 5.0) {
                
                Text("Every Government From Ever 🌎")
                    .font(Font.system(size: 40, design: .serif))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding()
                Spacer()
                    .frame(width: 20, height: 10)
                
                HStack{
                    Text("Name:")
                        .font(Font.system(size: 20, design: .serif))
                    TextField("Your Full Name ", text: $name)
                        .font(Font.system(size: 20, design: .serif))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/, 30.0)
                
                HStack{
                    Text("Nationality:")
                        .font(Font.system(size: 20, design: .serif))
                    TextField("Your Nationality ", text: $nationality)
                        .font(Font.system(size: 20, design: .serif))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/, 30.0)
                
                
                VStack(alignment: .leading, spacing: 5){
                    if showtext {
                        Text(name)
                            .font(Font.system(size: 20, design: .serif))
                        Text(nationality)
                            .font(Font.system(size: 20, design: .serif))
                    }
                    Text(errorMessage)
                        .font(Font.system(size: 20, design: .serif))
                        .foregroundColor(Color.red)
                }
                .padding([.leading, .bottom, .trailing], 30.0)
                
                
                HStack(alignment: .center){
                    Spacer()
                    Button("Submit",
                           action: {
                        buttonHandler()
                    })
                        .font(Font.system(size: 20, design: .serif))
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                        
                    Spacer()
                        .frame(width: 90, height: 0)
                    Button(action: {
                        clearButtonHandler()
                    }, label: {
                        Text("+")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.black)
                            .clipShape(Circle())
                            .padding([.top, .bottom, .trailing])
                    })
                }
                Spacer()
            }
        }
    }
    
    func buttonHandler() {
        
        if name == "" {
            errorMessage = "Please fill your name"
        }
        else if nationality == "" {
            errorMessage = "Please fill your nationality"
        }
        else{
            showtext = true
            errorMessage = ""
        }
    }
    
    func clearButtonHandler() {
        showtext = false
        name = ""
        nationality = ""
        errorMessage = ""
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
