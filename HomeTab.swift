//
//  HomeTab.swift
//  MusicTutor
//
//  Created by Dhriti Peshkar on 10/23/25.
//

import SwiftUI
import SwiftData

struct HomeTab: View {
    @Environment(\.modelContext) private var context
    @Query private var profiles: [UserProfile]

    @State private var name = ""
    @State private var instrument = ""
    @State private var years = ""

    var body: some View {
        VStack(spacing: 20) {

            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Email", text: $instrument)
                .textFieldStyle(.roundedBorder)

            TextField("Years", text: $years)
                .textFieldStyle(.roundedBorder)

            Button("Save Profile") {
                saveProfile()
            }

            if let profile = profiles.first {
                Divider()
                Text("Saved Profile:")
                Text("Name: \(profile.name)")
                Text("instrument: \(profile.instrument)")
                Text("Years Played: \(profile.years)")
            }
        }
        .padding()
        .onAppear {
            if let profile = profiles.first {
                name = profile.name
                instrument = profile.instrument
                years = profile.years
            }
        }
    }
        

    private func saveProfile() {
        if let existing = profiles.first {
            existing.name = name
            existing.instrument = instrument
            existing.years = years
        } else {
            let newProfile = UserProfile(name: name, instrument: instrument, years: years)
            context.insert(newProfile)
        }
    }
}
 
#Preview {
    HomeTab()
}
