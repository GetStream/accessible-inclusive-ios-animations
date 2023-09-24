//
//  MeetingOptionsView.swift
//  SwiftUIAroundClone
//
//  Created by amos.gyamfi@getstream.io on 18.7.2023.
//

import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

struct MeetingOptionsView: View {
    let borderGradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink {
                    PreJoinScreen()
                } label: {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "ellipsis")
                                .rotationEffect(.degrees(90))
                        }
                        
                        Spacer()
                        
                        Text("New Meeting")
                    }
                    .padding()
                    .frame(width: 160, height: 160)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "plus")
                            .font(.title2)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Text("Create New room")
                }
                .padding()
                .frame(width: 160, height: 160)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    Image("amos")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                }
                
                ToolbarItem(placement: .topBarLeading){
                    NavigationLink {
                        PreJoinScreen()
                    } label: {
                        Text("Start Meeting")
                    }
                    .buttonStyle(.bordered)
                }
                
                ToolbarItem(placement: .principal){
                    Button {
                        
                    } label: {
                        Text("Schedule")
                    }
                    .buttonStyle(.bordered)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(.sonoma)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 42, height: 42)
                        .overlay(Circle().stroke().foregroundStyle(borderGradient))
                }
            }
        }
    }
}


