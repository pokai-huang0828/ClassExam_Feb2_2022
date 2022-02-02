//
//  ContentView.swift
//  ClassExam_Feb2_2022
//
//  Created by PoKai Huang on 2022-02-02.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var nationality = ""
    @State var showText = false
    
    var body: some View {
        ZStack{
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Every Government Form Ever")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.bottom, 50.0)
                VStack{
                    HStack {
                        Text("Name: ")
                        TextField("", text: $name)
                    }
                    .padding(.all, 20)
                    .background(Color.gray)
                    .cornerRadius(10)
                        
                    HStack {
                        Text("Nationality: ")
                        TextField("", text: $nationality)
                    }
                    .padding(.all, 20)
                    .background(Color.gray)
                    .cornerRadius(10)
                    
                    if showText == true {
                        Text("Name: " + name)
                        Text("Nationality: " + nationality)
                    }
                }
                
                
                
                
                HStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Button {
                        submitHandle()
                    } label: {
                        Text("Submit")
                            .foregroundColor(Color.black)
                            .padding(.all, 20)
                            .background(Color.gray)
                            .cornerRadius(20)
                    }
                    Spacer()
                    Spacer()
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 80, height: 80)
                    Spacer()
                }.padding(/*@START_MENU_TOKEN@*/.all, 50.0/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
    }
    func submitHandle(){
        showText = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
