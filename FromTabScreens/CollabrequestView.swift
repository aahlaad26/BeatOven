//
//  CollabrequestView.swift
//  TabBarControllerBeatOven
//
//  Created by user2 on 29/01/24.
//

//
//  ContentView.swift
//  sample
//
//  Created by user2 on 29/01/24.
//

import SwiftUI

struct CollabrequestView: View {
    @State private var groupName: String = ""
    @State private var groupDescription: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView() {
            ZStack(){
                Color(red: 0.99, green: 0.87, blue: 0.82)
                ScrollView{
                    
                    ZStack{
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {HStack{
                            Image(systemName: "back-arrow")
                                .foregroundColor(.black)
                            Text("Back")
                                .foregroundColor(.black)
                        }
                            
                        }
                        .offset(x:-160,y:-360)
                        Text("Create New Group")
                            .font(
                                Font.custom("Poppins", size: 22)
                                    .weight(.medium)
                            )
                            .kerning(0.36)
                            .foregroundColor(.black)
                            .frame(width: 194.02933, height: 34, alignment: .topLeading)
                            .offset(x:-60,y:-330)
                        
                            Image("grp-img-collabreq")
                                     .resizable()
                                     .frame(width: 90, height: 90)
                                     .offset(x: -130, y: -250)
                    
                                    
                                    TextField("Group Name", text: $groupName)
                                        .frame(width: 247.20534, height: 27)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .background(Color(red: 1, green: 0.79, blue: 0.7, opacity: 0.965))
                                        
                                        .offset(x: 50, y: -270)
                                    
                                    TextField("📍Enter Genre or Song Name", text: $groupDescription)
                                        .frame(width: 247.20534, height: 27)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .foregroundColor(Color(red: 1, green: 0.79, blue: 0.7))
                                        .offset(x: 50, y: -230)
                        Rectangle() //blackline
                          .foregroundColor(.clear)
                          .frame(width: 355, height: 1)
                          .background(.black.opacity(0.3))
                          .offset(x:0,y:-180)
                        Text("Send Colab Requests")
                          .font(
                            Font.custom("Poppins", size: 20)
                              .weight(.bold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.black)
                          .frame(width: 239.26933, height: 38, alignment: .top)
                          .padding(.bottom,305)
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 355, height: 1)
                          .background(.black.opacity(0.3))
                          .offset(x:0,y:-140)
                        
                        Text("Your Followers")
                          .font(
                            Font.custom("Catamaran", size: 20)
                              .weight(.bold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.black)
                          .frame(width: 239.26933, height: 38, alignment: .top)
                          .offset(x:-5,y:-100)
                        
                        
                        HStack(spacing: 30) {
                            VStack {
                                Image("follower-1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 1")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            
                            VStack {
                                Image("follower-2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 2")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            VStack {
                                Image("follower-3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height:90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 3")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            
                            // Add more VStacks for each user with their respective images and names
                            
                        }.offset(x:4,y:196)

                        .padding(.bottom, 450)
                        
                        HStack(spacing: 30) {
                            VStack {
                                Image("follower-4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 4")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            
                            VStack {
                                Image("follower-5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 5")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            VStack {
                                Image("follower-6")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 6")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            
                            // Add more VStacks for each user with their respective images and names
                            
                        }.offset(x:6,y:316)

                        .padding(.bottom, 450)
                        
                        HStack(spacing: 30) {
                            VStack {
                                Image("follower-7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 7")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            
                            VStack {
                                Image("follower-8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 8")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            VStack {
                                Image("follower-9")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:85, height: 90)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("User 9")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            
                           
                            
                        }.offset(x:6,y:436)

                        .padding(.bottom, 450)
                        //TrackLibView()
                        NavigationLink(destination: UploadSoundtrackView().navigationBarBackButtonHidden(true)){
                            
                            ZStack {
                                Text("Send Request")
                                  .foregroundColor(Color(red: 0.97, green: 0.99, blue: 1))
                                  .frame(width: 236.25333, height: 55)
                                  .background(Color(red: 0.37, green: 0.16, blue: 0.12))
                                  .cornerRadius(100)
                            }
                              
                        }.offset(x:4,y:320)
                        
                    }.offset(y:170)
                    
                }
                
            }.ignoresSafeArea()
            
        }
        
    }
}

#Preview {
    CollabrequestView()
}

