//
//  MapView.swift
//  MYSwiftUI
//
//  Created by user218968 on 6/9/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ mapView: UIViewType, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: -23.5888, longitude: -46.658890)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }
}
