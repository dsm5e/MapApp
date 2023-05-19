//
//  LocationViewModel.swift
//  MapApp
//
//  Created by dsm 5e on 19.05.2023.
//
import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // Все загруженные локации
    @Published var locations: [Location]
    
    // Текущее положение на карте
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    // Текущий регион на карте
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Список местоположений
    @Published var showLocationsList: Bool = false
    
    // Лист для детальной информации
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        mapRegion = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan)
    }
    
    func toggleLocationsList() {
        withAnimation(.easeOut) {
            showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed() {
        
        // Получаем текущий индекс
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation }) else {
            print("Нет текущего индекса в массиве")
            return
        }
        
        // Проверяем что следующий индекс существует
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // Проверка на правильность следующего индекса
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
