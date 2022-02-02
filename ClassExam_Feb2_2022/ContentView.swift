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
                Text("Every Government Form Ever")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.vertical, 30.0)
                Spacer()
                    .frame(height: 50)
                VStack{
                    HStack {
                        Text("Name: ")
                        TextField("", text: $name)
                    }
                    .frame(width: 300, height: 40)
                    .padding(.all, 20)
                    .background(Color.gray)
                    .cornerRadius(10)
                        
                    HStack {
                        Text("Nationality: ")
                        TextField("", text: $nationality)
                    }
                    .frame(width: 300, height: 40)
                    .padding(.all, 20)
                    .background(Color.gray)
                    .cornerRadius(10)
                }
                
                if showText {
                    VStack(alignment: .leading){
                        Text("Name: " + name)
                            .padding(.trailing, 205.0)
                            
                        Text("Nationality: " + nationality)
                            .padding(.trailing, 195.0)
                            
                    }
                    
                }
                
                Spacer()
                HStack{
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
                    Button(action: {
                                print("Round Action")
                                }) {
                                Text("+")
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(Color.black)
                                    .background(Color.gray)
                                    .clipShape(Circle())
                                }
                                .padding([.bottom, .trailing], 10.0)
                }
                
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
