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
    var textaddress: UITextField!

    
    
    //map info
    var mapview: MKMapView
   
    var getDirectionButton: UIButton
    let LocationM = CLLocationManager()
    let Clientid = "WP0KU1PZ5EZELDOTL2MVVWEK0Y4PSU45TMHLHUCV4QFBK4OI"
    let CLIENTSECRET = "FJJPDA5ANL3JCXAUALOMXKLWJYKSUY1PTZXESPGYO04RA1RK"
    

    
    
    var randomLoc: Double
    var randomLoc2: Double
    var randomLoc3: Double
     var randomLoc4: Double
    var randomLoc5: Double
     var randomLoc6: Double
    var randomLoc7: Double
    var randomLoc8: Double
    //monater markers
     var Wolfpin1 = MKPointAnnotation()
     var Flypin2 = MKPointAnnotation()
     var Batpin3 = MKPointAnnotation()
     var SlimeG4 = MKPointAnnotation()
     var SlimePpin5 = MKPointAnnotation()
     var SlimeRpin6 = MKPointAnnotation()
     var SlimeYpin7 = MKPointAnnotation()
     var Dragonpin8 = MKPointAnnotation()

    
    init() {
        randomLoc =  0.004065
        randomLoc2 =  Double.random(in:0...00.5)
        randomLoc3 =  Double.random(in:0...00.5)
        randomLoc4 =  Double.random(in:0...00.5)
        randomLoc5 =  Double.random(in:0...00.5)
        randomLoc6 =  Double.random(in:0...00.5)
        randomLoc7 =  Double.random(in:0...00.5)
        randomLoc8 =  Double.random(in:0...00.5)
         
        textaddress = UITextField()
        getDirectionButton = UIButton()
        
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
        getDirectionButton = UIButton()
        
        //randmon location for monsters
        randomLoc =   0.004065
        randomLoc2 =   Double.random(in:0...00.5)
        randomLoc3 =  Double.random(in:0...00.5)
        randomLoc4 = Double.random(in:0...00.5)
        randomLoc5 =  Double.random(in:0...00.5)
        randomLoc6 =  Double.random(in:0...00.5)
        randomLoc7 =  Double.random(in:0...00.5)
        randomLoc8 =  Double.random(in:0...00.5)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolBar = UIToolbar();
        toolBar.sizeToFit();
        textaddress  = UITextField(frame: CGRect(x:0, y:650, width: 400,height:50))
        textaddress.backgroundColor = .white
        textaddress.placeholder = "Please Input Place you want to go "
        textaddress.borderStyle = .line
        textaddress.inputAccessoryView = toolBar;
        view.addSubview(textaddress );
        getDirectionButton =  UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 100, y: view.bounds.maxY - 150, width: 150, height: 150))
        
        
        
        friendButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        

  
        view.addSubview(textaddress)
        view.addSubview(getDirectionButton)
        
        
        
        view.addSubview(friendButton)
        view.addSubview(itemButton)
        view.addSubview(mapButton)
        view.addSubview(progressButton)
        view.addSubview(shopButton)
        
        getDirectionButton.setImage(UIImage(named: "Button"), for: .normal)
        
        
        friendButton.setImage(UIImage(named: "Button"), for: .normal)
        itemButton.setImage(UIImage(named: "Button"), for: .normal)
        mapButton.setImage(UIImage(named: "Button"), for: .normal)
        progressButton.setImage(UIImage(named: "Button"), for: .normal)
        shopButton.setImage(UIImage(named: "Button"), for: .normal)
        
        friendButton.addTarget(self, action: #selector(toFriend), for: .touchUpInside)
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
       
        self.randomLoc = 0.004065
        self.randomLoc2 = Double.random(in:0...0.004065)
        self.randomLoc3 =  Double.random(in:0...0.004065)
        self.randomLoc4 =  Double.random(in:0...0.004065)
        self.randomLoc5 =  Double.random(in:0...0.004065)
        self.randomLoc6 =  Double.random(in:0...0.004065)
        self.randomLoc7 =  Double.random(in:0...0.004065)
        self.randomLoc8 =  Double.random(in:0...0.004065)
        
      
        self.mapview = MKMapView(frame: CGRect(x: 10, y: 60, width: 400, height: 600))
        self.view.addSubview(mapview)
        
        checkLocationServices()
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
    
    
    //check to see location system are working
    func checkLocationServices()
     {
         if(CLLocationManager.locationServicesEnabled())
         {
             setupLoation()
             checkLocationAuthorization()
      
         }
     }
    
    // sets up Loation Manger
     func setupLoation()
    {
        LocationM.delegate = self
        LocationM.desiredAccuracy = kCLLocationAccuracyHundredMeters
              
    }
    
    //check user location Authorization
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            // map follws location
            TrackUser()
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
    
    ///track user location
    func TrackUser()
    {
        mapview.showsUserLocation = true;
        centerviewuserlocation()
        LocationM.startUpdatingLocation()
    }
    
    //set map foucus on this region
    func centerviewuserlocation(){
        if let location = LocationM.location?.coordinate{
        let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapview.setRegion(region, animated: true)
            
       //adds Annotation to map
          mapview.addAnnotation(Wolfpin1)
          mapview.addAnnotation(Flypin2)
          mapview.addAnnotation(Batpin3 )
          mapview.addAnnotation(SlimeG4)
          mapview.addAnnotation(SlimePpin5)
          mapview.addAnnotation(SlimeRpin6)
          mapview.addAnnotation(SlimeYpin7)
          mapview.addAnnotation(Dragonpin8)
            
        }
        
    }
    
       //update location of user
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
                
                
                //monster location Coord
                let monster1Loc = CLLocationCoordinate2DMake(latitude + randomLoc, longitude + randomLoc2 )
                
                let monster1Loc2 = CLLocationCoordinate2DMake(latitude + randomLoc2 ,longitude + randomLoc3 )
             
                let monster1Loc3 = CLLocationCoordinate2DMake(latitude + randomLoc3 , longitude + randomLoc4 )
                
                let monster1Loc4 = CLLocationCoordinate2DMake(latitude + randomLoc4  ,longitude + randomLoc5)
                
                let monster1Loc5 = CLLocationCoordinate2DMake(latitude + randomLoc5 ,longitude + randomLoc6)
                 let monster1Loc6 = CLLocationCoordinate2DMake(latitude + randomLoc6 ,longitude + randomLoc7)
                
                 let monster1Loc7 = CLLocationCoordinate2DMake(latitude + randomLoc7 ,longitude + randomLoc7)
                
                //monster location Coord
                Wolfpin1.coordinate = monster1Loc
                Wolfpin1.title = "wolf"
                
                Flypin2.coordinate = monster1Loc2
                Flypin2.title = "fly"
                
                Batpin3.coordinate = monster1Loc3
                Batpin3.title = "bat"
                
                SlimeG4.coordinate = monster1Loc4
                SlimeG4.title = "slime green"
                
                SlimePpin5.coordinate = monster1Loc5
                SlimePpin5.title = "slime purple"
                
                SlimeRpin6.coordinate = monster1Loc6
                SlimeRpin6.title = "slime red"
                
                SlimeYpin7.coordinate = monster1Loc7
                SlimeYpin7.title = "slime yellow"
                

                print("monster \(String(describing: Wolfpin1.coordinate))")
                print("monplayer \(String(describing: LocationM.location?.coordinate))")
                print("monster1 \(String(describing: Batpin3.coordinate))")
                 print("monster2 \(String(describing: Flypin2.coordinate))")
                 print("monster3 \(String(describing: Wolfpin1.coordinate))")
             
                
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

    
    func getDirectionofUser(_sender:Any)
       {
           getLocAdress()
       }
       
       
       func getLocAdress()
       {
           let geocoder = CLGeocoder()
           geocoder.geocodeAddressString(textaddress.text!) { (placemarks, error) in
               guard let placemarks = placemarks, let location = placemarks.first?.location
                   else {
                       print("No Location Found")
                       return
               }
               print(location)
               self.mapUserDestination(destinationCord: location.coordinate)
           }
       }
       
       
        func mapUserDestination(destinationCord : CLLocationCoordinate2D) {
           
           let souceCordinate = (LocationM.location?.coordinate)!
           
           let soucePlaceMark = MKPlacemark(coordinate: souceCordinate)
           let destinationPlaceMark = MKPlacemark(coordinate: destinationCord)
           
           let sourceItem = MKMapItem(placemark: soucePlaceMark)
           let destItem = MKMapItem(placemark:  destinationPlaceMark)
           
           let destinationRequest = MKDirections.Request()
           destinationRequest.source = sourceItem
           destinationRequest.destination = destItem
           destinationRequest.transportType = .walking
           destinationRequest.requestsAlternateRoutes = true
           
           let directions = MKDirections(request: destinationRequest)
           directions.calculate { (response, error) in
               guard let response = response else {
                   if let error = error{
                       print("Something is wrong :(")
                   }
                   return
               }
               
            let route = response.routes[0]
            self.mapview.addOverlay(route.polyline)
            self.mapview.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
           }
           
           
       }
       
       
       ///creates blue line which show user direction
          func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
           let render = MKPolylineRenderer(overlay: overlay as! MKPolyline)
           render.strokeColor = .blue
           return render
       }
       
    
  
       ///checks to see if location falied
       func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
           print("Location update falied , \(error)")
       }
       
    
        ///checks to see if location Authorization has been changed
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
    {
     checkLocationAuthorization()
    }
    
    
      ///checks to see MKPointAnnotation identifed
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?  {
         
         if !(annotation is MKPointAnnotation)
         {
             print ("nit reg as mark")
             return nil
         }
         
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "monsteridentifer")
         if annotationView == nil {
             annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "monsteridentifer")
             annotationView!.canShowCallout = true
         }
         else{
             annotationView!.annotation = annotation
         }
         annotationView!.image = UIImage(named: "Wolf2.png")
         
         return annotationView
     }

}
