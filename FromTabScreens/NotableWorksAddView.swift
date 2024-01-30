//
//  NotableWorksAddView.swift
//  TabBarControllerBeatOven
//
//  Created by mathangy on 15/01/24.
//

import SwiftUI
import AVKit
struct NotableWorksAddView: View {
    @State private var userText = ""
    @State private var selectedFile = false
    @State private  var mediaURL: URL?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 0.99, green: 0.87, blue: 0.82)
                ScrollView {
                    ZStack {
                        Text("Adding Notable works")
                          .font(Font.custom("SF Pro Display", size: 22))
                          .fontWeight(.black)
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.22, green: 0.21, blue: 0.25))
                          .frame(width: 271, alignment: .top)
                          .offset(y:-340)
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("back-arrow")
                                .resizable()
                                .frame(width: 30,height: 30)
                        }
                            .offset(x:-170,y:-340)
                        
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 365, height: 566)
                          .background(Color(red: 1, green: 0.79, blue: 0.7))
                          .cornerRadius(10)
                          .offset(y:-10)
                        
                        
                        Text("Work name")
                          .font(
                            Font.custom("SF Pro Display", size: 25)
                              .weight(.heavy)
                          )
                          .foregroundColor(.black)
                          .frame(width: 185, height: 31, alignment: .topLeading)
                          .offset(x:-70,y:-260)
                        
                        Image("delete-icon")
                            .offset(x:150,y:-265)
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 323, height: 455)
                          .background(Color(red: 0.99, green: 0.87, blue: 0.82))
                          .cornerRadius(10)
                          .offset(y:-10)
                          .overlay(
                            VStack(alignment: .leading) {
                                TextField("Enter your text here...", text: $userText)
                        .font(.system(size: 19))
                        .foregroundColor(.black)
                        .offset(x:10,y:-10)
                        
                                Text("\(userText.count)/1000 words")
                                            .font(.headline)
                                                                .foregroundColor(userText.count > 900 ? .red : .gray)
                                                                .padding(.bottom)
                                                                .offset(x:200,y:170)
                                                        }
                                  )
                        
                        
                            
                        VStack {
                            // Button with an image that opens fileImporter when clicked
                            Button(action: {
                                openFileImporter()
                            }) {
                                if let mediaURL = mediaURL {
                                    if mediaURL.pathExtension.lowercased() == "mov" || mediaURL.pathExtension.lowercased() == "mp4" {
                                        VideoPlayer(player: AVPlayer(url: mediaURL))
                                            .frame(width: 150, height: 200)
                                    } else {
                                        Image(uiImage: UIImage(contentsOfFile: mediaURL.path) ?? UIImage(systemName: "photo")!)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 150, height: 200)
                                    }
                                } else {
                                    Image( "file-upload-icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150, height: 200)
                                }
                            }
                        }
                        .fileImporter(isPresented: $selectedFile, allowedContentTypes: [.image, .movie]) { result in
                            // Handle the selected file
                            do {
                                let fileURL = try result.get()
                                print("Selected File: \(fileURL.path)")

                                // Set the mediaURL to display the selected image or video
                                mediaURL = fileURL
                            } catch {
                                // Handle any errors
                                print("Error reading the selected file: \(error.localizedDescription)")
                            }
                            
                        }
                        .offset(y:-140)
                        //thin line between
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 304, height: 1)
                          .background(Color(red: 0.59, green: 0.56, blue: 0.55).opacity(0.26))
                          .offset(y:-50)
                        //button
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 182, height: 65)
                          .background(Color(red: 0.37, green: 0.16, blue: 0.12))
                          .cornerRadius(100)
                          .offset(y:326)
                        
                        Text("Add Works")
                          .font(Font.custom("Space Grotesk", size: 21))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.97, green: 0.99, blue: 1))
                          .offset(y:327)
                        
                    }
                    .frame(width: 393, height: 852)
                    .foregroundColor(.clear)
                }
            }.ignoresSafeArea()
        }
    }
    func openFileImporter() {
        selectedFile = true
    }

}

#Preview {
    NotableWorksAddView()
}
