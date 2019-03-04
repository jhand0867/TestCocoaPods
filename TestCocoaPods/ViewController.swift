//
//  ViewController.swift
//  TestCocoaPods
//
//  Created by joseph on 3/3/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit
import PKHUD
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        AF.request("http://api.theappsdr.com/simple.php").responseString {(response) in
//            if response.result.isSuccess {
//                print("Success!!")
//                print(response.result.value!)
//            } else {
//                print("Erro!")
//            }
//
//        }
        
        let parameters: Parameters = ["name": "Bob Smith","age":30]
        
//        // All three of these calls are equivalent
//        Alamofire.request("https://httpbin.org/get", parameters: parameters) // encoding defaults to `URLEncoding.default`
//        Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding.default)
//        Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding(destination: .methodDependent))


        AF.request("https://my-json-server.typicode.com/typicode/demo/posts", method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseString{(response) in
            if response.result.isSuccess {
                print("Connected!!")
                print(response.result.value!)
            } else {
                print("Error!!")
            }
        }
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        HUD.flash(.success, delay: 2.0)
    }
    
}

