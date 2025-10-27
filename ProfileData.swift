//
//  ProfileData.swift
//  MusicTutor
//
//  Created by a on 10/26/25.
//

import Foundation
import SwiftData

@Model
class UserProfile {
    var name: String
    var instrument: String
    var years: String

    init(name: String = "", instrument: String = "", years: String = "") {
        self.name = name
        self.instrument = instrument
        self.years = years
    }
}
