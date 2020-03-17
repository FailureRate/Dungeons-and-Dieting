//
//  GameViewController2.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit
import MapKit
import CoreLocation

class MapViewController: UIViewController , CLLocationManagerDelegate, MKMapViewDelegate {
   
 
    //buttons
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
      
    
    
    //map info
    var mapview: MKMapView
    let LocationM = CLLocationManager()
    let Clientid = "WP0KU1PZ5EZELDOTL2MVVWEK0Y4PSU45TMHLHUCV4QFBK4OI"
    let CLIENTSECRET = "FJJPDA5ANL3JCXAUALOMXKLWJYKSUY1PTZXESPGYO04RA1RK"
     

 var randomLoc = Double.random(in:-100...1000)
    init() {
 
     
        mapview = MKMapView()
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
          
        mapview = MKMapView()
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        
        view.addSubview(friendButton)
        view.addSubview(itemButton)
        view.addSubview(mapButton)
        view.addSubview(progressButton)
        view.addSubview(shopButton)
        
        friendButton.setImage(UIImage(named: "Button"), for: .normal)
        itemButton.setImage(UIImage(named: "Button"), for: .normal)
        mapButton.setImage(UIImage(named: "Button"), for: .normal)
        progressButton.setImage(UIImage(named: "Button"), for: .normal)
        shopButton.setImage(UIImage(named: "Button"), for: .normal)
        
        friendButton.addTarget(self, action: #selector(toFriend), for: .touchUpInside)
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
                  setupLoation()
        
        

             checkLocationServices()
             self.mapview = MKMapView(frame: CGRect(x: 10, y: 60, width: 400, height: 600))

              self.view.addSubview(mapview)
          
    }
    
    @IBAction func toFriend() {
        let newViewController = FriendViewController()
        newViewController.view.backgroundColor = .blue
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toItem() {
        let newViewController = InventoryViewController()
        newViewController.view.backgroundColor = .red
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toProgress() {
        let newViewController = ProgressViewController()
        newViewController.view.backgroundColor = .purple
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toShop() {
        let newViewController = ShopViewController()
        newViewController.view.backgroundColor = .orange
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    func checkLocationServices()
     {
         if(CLLocationManager.locationServicesEnabled())
         {
             setupLoation()
             checkLocationAuthorization()
         }
     }
   
    
    ///marker info

        

    
    func setupLoation()
          {
              LocationM.delegate = self
              LocationM.desiredAccuracy = kCLLocationAccuracyHundredMeters
              LocationM.startUpdatingLocation()
          }
    
    func centerviewuserlocation(){
        if let location = LocationM.location?.coordinate{
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 1000, longitudinalMeters: 1000)
            mapview.setRegion(region, animated: true)
            
        }
        
    }

    
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            // map follws location
            mapview.showsUserLocation = true;
            centerviewuserlocation()
        case.denied:
            //show alert
            LocationM.requestLocation()
            break
        case .notDetermined:
            //plase turn on location services
            LocationM.requestWhenInUseAuthorization()
            break
        case .restricted:
            break
        case .authorizedAlways:
        break
        default:
            break
        }
        
    }

       
       func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
       {
           if let location =  locations.last
           {
               if location.horizontalAccuracy > 0 {
                   LocationM.stopUpdatingLocation()
                   let longitude =  location.coordinate.longitude
                   let latitude  = location.coordinate.latitude
                
                let centerview = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                let region = MKCoordinateRegion.init(center: centerview, latitudinalMeters: 1000, longitudinalMeters: 1000)
                mapview.setRegion(region, animated: true)
               }
           }
           

           let session = URLSession.shared
           guard let url = URL(string: "https://api.foursquare.com/v2/venues/search?ll=\(locations[0].coordinate.latitude),\(locations[0].coordinate.longitude)&client_id=\(Clientid)&client_secret=\(CLIENTSECRET)&v=20190520")  else {
                  return
              }
              
           let request = URLRequest.init(url: url)
           let task: URLSessionDataTask = session.dataTask(with: request){ (data, response, error) in
               
               guard let data = data else{
               print(response ?? "no resonpse")
               print(error ?? " no error")
                   return
               }
               let datacheck = String(decoding: data, as : UTF8.self)
               print(datacheck)
            }
           task.resume()
           
           
       }

       
       func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
           print("Location update falied , \(error)")
       }
       
    
       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
    {
     checkLocationAuthorization()
    }


}
