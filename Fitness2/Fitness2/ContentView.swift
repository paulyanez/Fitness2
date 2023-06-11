//
//  ContentView.swift
//  Fitness2
//
//  Created by Paul Yanez on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 1
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                Fitness()
                    .tabItem {
                        Label("Summary", systemImage: "target")
                    }.tag(0)
                
                Fitness()
                    .tabItem {
                        Label("Fitness+", systemImage: "figure.run.circle.fill")
                    }.tag(1)
                
                Fitness()
                    .tabItem {
                        Label("Sharing", systemImage: "infinity.circle.fill")
                    }.tag(2)
            }
            .tint(Color(hex: 0x6E8FF2))
        }
    }
}

struct Fitness: View {
    var twoColumnGrid = [GridItem(.flexible(), spacing: 6), GridItem(.flexible(), spacing: 6)]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                topNav
                workouts
                musicView
            }
        }
    }
    
    var topNav: some View {
        VStack {
            ZStack {
                Image("fitness-jumping")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 220)
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.largeTitle)
                        .symbolRenderingMode(.hierarchical)
                        .fontWeight(.thin)
                        .offset(y: -220 / 2)
                }
                .padding(.trailing)
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Spacer()
            }
        }
    }
    
    var workouts: some View {
        VStack(spacing: 20.0) {
            VStack(spacing: 2.0) {
                HStack(alignment: .bottom) {
                    Text("Brian Sullivan")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: 0x6E8FF2))
                    
                    Spacer()
                    
                    Button(action: {
                        // action to perform when button is tapped
                    }) {
                        HStack(spacing: 6.0) {
                            Image(systemName: "plus")
                                .font(.callout)
                                .fontWeight(.bold)
                                .foregroundColor(Color(hex: 0x6E8FF2))
                            
                            Text("ADD")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hex: 0x6E8FF2))
                                .padding(.vertical, 8)
                        }
                        .padding(.horizontal)
                        .padding(.trailing, 4)
                        .background {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.white.opacity(0.15))
                        }
                    }
                }
                Text("30min • Latest Hits • Ep42")
                    .font(.callout)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Indoor Cycle")
                    .font(.callout)
                    .foregroundColor(Color.white.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack(spacing: 8) {
                Button(action: {
                    // code
                }) {
                    Text("Let's Go")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background {
                            RoundedRectangle(cornerRadius: 6, style: .continuous)
                                .fill(Color(hex: 0x6E8FF2))
                        }
                }
                
                Button(action: {
                    // code
                }) {
                    HStack {
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(Color.white)
                        Text("Preview")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical, 12)
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 6, style: .continuous)
                            .fill(.white.opacity(0.15))
                    }
                }
            }
            
            Text("This Artist Spotlight ride includes eight intervals across three flat roads and three hills. There is a special playlist featuring hit songs and remixes by internationally artists.")
                .fontWeight(.regular)
                .foregroundColor(Color.white)
                .font(.callout)
                .frame(minHeight: 90)
            
            
            Spacer()
        }
        .padding(.top, 70)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
    }
    
    
    var musicView: some View {
        VStack {
            HStack(spacing: 4.0) {
                Image(systemName: "apple.logo")
                    .font(.title3)
                
                Text("Music")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("Listen in Music")
                    .font(.headline)
                    .foregroundColor(Color(hex: 0x6E8FF2))
            }
            .padding()
            
            HStack(spacing: 12.0) {
                Image("oxycontin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("Oxycontin")
                        .font(.title3)
                    
                    Text("Billie Eilish")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack(spacing: 12.0) {
                Image("billie-notime")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("No Time to Die")
                        .font(.title3)
                    
                    Text("Billie Eilish")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            
            HStack(spacing: 12.0) {
                Image("billie-whenwe")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("When we are asleep")
                        .font(.title3)
                    
                    Text("Billie Eilish")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 1, style: .continuous)
                .fill(.ultraThinMaterial).opacity(0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
