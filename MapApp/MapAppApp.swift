//
//  MapAppApp.swift
//  MapApp
//
//  Created by dsm 5e on 19.05.2023.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
