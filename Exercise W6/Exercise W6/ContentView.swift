//
//  ContentView.swift
//  Exercise W6
//
//  Created by student on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {                    RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(height: 150)
                .overlay(Image(systemName:"person.crop.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .foregroundColor(.gray)
                    .offset(y: 70)
                )
                .padding(.bottom, 50)
        }
        
        VStack (spacing: 40) {
            VStack (spacing: 10) {
                Text("@fstevany")
                    .foregroundColor(.gray)
                
                Text("Felicia Stevany Lewa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                HStack{
                    Text("Surabaya")
                        .foregroundColor(.blue)
                    Text(" |  Joined Sept 2022")
                        .foregroundColor(.gray)
                }
            }
            .padding(.bottom, 50)
            
            // Buttons
            VStack (spacing: 20){
                HStack(spacing: 20) {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.black)
                            Text("Follow")
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                    }
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "message")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.black)
                            Text("Message")
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                    }
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.black)
                            Text("More")
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                    }
                }
                Text("CEO System D, Because your satisfaction is everything & Standing out from the rest, and that’s what we want you to be as well.")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .padding(.horizontal)
                        
                Section {
                    Form {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Information")
                                .font(.title)
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            HStack {
                                Image(systemName: "globe")
                                    .foregroundColor(.gray)
                                Text("Website")
                                    .foregroundColor(.gray)
                                Spacer()
                                Text("instagram.com/feliciastevanyy")
                                    .foregroundColor(.black)
                            }
                            
                            HStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                Text("Email")
                                    .foregroundColor(.gray)
                                Spacer()
                                Text("fstevany@student.ciputra.ac.id")
                                    .foregroundColor(.black)
                            }
                            
                            HStack {
                                Image(systemName: "phone")
                                    .foregroundColor(.gray)
                                Text("Phone")
                                    .foregroundColor(.gray)
                                Spacer()
                                Text("+62 896 929 182 28")
                            }
                            
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Joined")
                                    .foregroundColor(.gray)
                                Spacer()
                                Text("Sept 2022")
                            }
                        }
                        
                        VStack (alignment: .leading, spacing: 10){
                            HStack {
                                TagView(text: "UI Designer")
                                TagView(text: "Web Developer")
                                TagView(text: "Mobile Developer")
                            }
                            HStack {
                                TagView(text: "Data Analyst")
                            }
                        }
                    }
                }
                .font(.subheadline)
            }
            .padding(.top, -70)
        }
    }
}

struct TagView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .padding(.vertical, 6)
            .padding(.horizontal, 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(5)
    }
}

#Preview {
    ContentView()
}
