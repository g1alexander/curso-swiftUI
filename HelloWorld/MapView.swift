//
//  MapView.swift
//  HelloWorld
//
//  Created by g1alexander on 11/3/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //6.2442876,-75.616231,13
        
        let coordinate = CLLocationCoordinate2D(latitude: 6.2442876, longitude: -75.616231)
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
