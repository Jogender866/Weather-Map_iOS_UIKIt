//
//  MKMapViewVC.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 13/05/24.
//

import UIKit
import MapKit
import CoreLocation

class MKMapViewVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    // MARK: - IBOUTLETS
    @IBOutlet weak var mapView: MKMapView!
    
    // MARK: - PROPERTIES
    var locationManager = CLLocationManager()
    
    // MARK: - VIEW LIFE CYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Location Manager Setup
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // MapView Setup
        mapView.showsUserLocation = true
        mapView.delegate = self
        
        // Add zoom in and zoom out buttons
        addZoomButtons()
        
        // Add share location button
        addShareLocationButton()
    }
    
    // CLLocationManagerDelegate Method
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
    
    // MARK: - MKMapViewDelegate Methods
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else { return nil }
        
        let annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "pin")
        annotationView.canShowCallout = true
        return annotationView
    }
    
    // MARK: - Zoom In and Zoom Out Methods
    @objc func zoomIn() {
        var region = mapView.region
        region.span.latitudeDelta /= 2
        region.span.longitudeDelta /= 2
        mapView.setRegion(region, animated: true)
    }
    
    @objc func zoomOut() {
        var region = mapView.region
        region.span.latitudeDelta *= 2
        region.span.longitudeDelta *= 2
        mapView.setRegion(region, animated: true)
    }
    
    // MARK: - Share Location Method
    @objc func shareLocation() {
        guard let userLocation = locationManager.location else { return }
        let coordinate = userLocation.coordinate
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = "My Location"
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
    }
    
    // MARK: - Helper Methods
    func addZoomButtons() {
        let zoomInButton = UIButton(frame: CGRect(x: 20, y: 50, width: 100, height: 50))
        zoomInButton.setTitle("Zoom In", for: .normal)
        zoomInButton.addTarget(self, action: #selector(zoomIn), for: .touchUpInside)
        zoomInButton.backgroundColor = UIColor.white
        zoomInButton.layer.cornerRadius = 8
        zoomInButton.layer.borderWidth = 1
        zoomInButton.layer.borderColor = UIColor.black.cgColor
        view.addSubview(zoomInButton)
        
        let zoomOutButton = UIButton(frame: CGRect(x: 20, y: 120, width: 100, height: 50))
        zoomOutButton.setTitle("Zoom Out", for: .normal)
        zoomOutButton.addTarget(self, action: #selector(zoomOut), for: .touchUpInside)
        zoomOutButton.backgroundColor = UIColor.white
        zoomOutButton.layer.cornerRadius = 8
        zoomOutButton.layer.borderWidth = 1
        zoomOutButton.layer.borderColor = UIColor.black.cgColor
        view.addSubview(zoomOutButton)
    }
    
    func addShareLocationButton() {
        let shareLocationButton = UIButton(frame: CGRect(x: 20, y: 190, width: 200, height: 50))
        shareLocationButton.setTitle("Share My Location", for: .normal)
        shareLocationButton.addTarget(self, action: #selector(shareLocation), for: .touchUpInside)
        shareLocationButton.backgroundColor = UIColor.white
        shareLocationButton.layer.cornerRadius = 8
        shareLocationButton.layer.borderWidth = 1
        shareLocationButton.layer.borderColor = UIColor.black.cgColor
        view.addSubview(shareLocationButton)
    }
    
    // MARK: - DEINIT
    deinit {
        print("MKMapViewVC has been REMOVED...!")
    }
}
