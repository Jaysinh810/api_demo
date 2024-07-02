//
//  ViewController.swift
//  apiCallDemo
//
//  Created by DDS3 on 24/05/24.
//

import UIKit
import Reachability
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var apiCalBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    
    @IBAction func onClickApiCall(_ sender: UIButton) {
        //on click of button need to call api
        
        //let header : HTTPHeaders = nil
        
        self.getApiCall(url: "https://randomuser.me/api/") { resp, err in
            
            print(err ?? "")
        }
        
        self.apiCalBtn.isUserInteractionEnabled = false
        
    }
    
    func checkInternet() -> String {
        let network : Reachability = try! Reachability()
        var networkValue : String = "" as String
        
        switch network.connection {
        case .none:
            networkValue = "None"
        case .unavailable:
            networkValue = "network is unavailable."
        case .wifi:
            networkValue = "network is WiFi."
        case .cellular:
            networkValue = "network is cellular data."
        }
        
        return networkValue
        
    }
    
    func getApiCall(url: String, completionHandler: @escaping (AnyObject?, NSError?) -> ()) -> () {
        
        AF.request(url, method: .get, encoding: JSONEncoding.default, headers: nil).responseJSON { (resp) in
            switch resp.result {
            case .success(let value):
                if let json = value as? [String : Any] {
                    print(json)
                    completionHandler(json as AnyObject, nil)
                    
                }
            case .failure(let err):
                print(err)
            }
        }
        
    }
    

}

