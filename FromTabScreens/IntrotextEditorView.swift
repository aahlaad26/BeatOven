//
//  IntrotextEditorView.swift
//  TabBarControllerBeatOven
//
//  Created by mathangy on 15/01/24.
//

import SwiftUI

struct IntrotextEditorView: View {
    @State private var userText = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 0.99, green: 0.87, blue: 0.82)
                ScrollView{
                    ZStack {
                        Text("Adding Text")
                          .font(Font.custom("SF Pro Display", size: 25))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.22, green: 0.21, blue: 0.25))
                          .frame(width: 271, alignment: .top)
                          .offset(y:-350)
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("back-arrow")
                                .resizable()
                                .frame(width: 30,height: 30)
                        }
                            .offset(x:-165,y:-350)
                        //big skin colour rectangle
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 365, height: 556)
                          .background(Color(red: 1, green: 0.79, blue: 0.7))
                          .cornerRadius(10)
                          .offset(y:-20)
                        
                        Text("Introduction")
                          .font(
                            Font.custom("SF Pro Display", size: 30)
                              .weight(.heavy)
                          )
                          .foregroundColor(.black)
                          .frame(width: 185, height: 31, alignment: .topLeading)
                          .offset(x:-70,y:-270)
                        
                        Image("delete-icon")
                            .offset(x:150,y:-270)
                        //white rectangle in front
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 323, height: 455)
                          .background(Color(red: 0.99, green: 0.87, blue: 0.82))
                          .cornerRadius(10)
                          .offset(y:-10)
                          .overlay(
                            VStack(alignment: .leading) {
                                TextField("Enter your text here...", text: $userText)
                                    .frame(width: 300, height: 400)
                        .font(.system(size: 19, weight: .light))
                        .foregroundColor(.black)
                        
                        .offset(x:10,y:-169)

                        Text("\(userText.count)/1000 words")
                                    .font(.headline)
                                                        .foregroundColor(userText.count > 900 ? .red : .gray)
                                                        .padding(.bottom)
                                                        .offset(x:200)
                                                }
                          )
                        
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 152, height: 55)
                          .background(Color(red: 0.37, green: 0.16, blue: 0.12))
                          .cornerRadius(100)
                          .offset(y:330)
                        Text("Add Text")
                          .font(Font.custom("Space Grotesk", size: 21))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.97, green: 0.99, blue: 1))
                          .offset(y:330)
                        
                    }
                    .frame(width: 393, height: 852)
                    .foregroundColor(.clear)
                }
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    IntrotextEditorView()
}
