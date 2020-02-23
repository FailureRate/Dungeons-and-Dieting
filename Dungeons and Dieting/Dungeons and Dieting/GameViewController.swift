//
//  GameViewController.swift
//  Dungeons and Dieting
//
//  Created by Matthew Ferreira on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import CoreLocation

class GameViewController: UIViewController, CLLocationManagerDelegate {

    var playButton: UIButton
    let LocationM = CLLocationManager()
    let Clientid = "WP0KU1PZ5EZELDOTL2MVVWEK0Y4PSU45TMHLHUCV4QFBK4OI"
    let CLIENTSECRET = "FJJPDA5ANL3JCXAUALOMXKLWJYKSUY1PTZXESPGYO04RA1RK"

    
        
    init() {
        playButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        playButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(playButton)
        playButton.setImage(UIImage(named: "circle"), for: .normal)
        playButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
           
        playButton.addTarget(self, action: #selector(toInvent), for: .touchDown)
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
          setupLoation()
    }
    
    @IBAction func toMap() {
        let mapViewController = MapViewController()
        mapViewController.view.backgroundColor = .green
        self.present(mapViewController, animated: false, completion: nil)
    }
    

  
    
    func setupLoation()
       {
           LocationM.delegate = self
           LocationM.desiredAccuracy = kCLLocationAccuracyHundredMeters
           LocationM.requestWhenInUseAuthorization()
           LocationM.requestLocation()
           LocationM.startUpdatingLocation()
       }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        if let location =  locations.last
        {
            if location.horizontalAccuracy > 0 {
                LocationM.stopUpdatingLocation()
                
                let longitude =  location.coordinate.longitude
                let latitude  = location.coordinate.latitude
                print("long =\(longitude),latiude= \(latitude )" )
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
    
}
