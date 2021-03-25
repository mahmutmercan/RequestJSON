//
//  ViewController.swift
//  Request
//
//  Created by Mahmut MERCAN on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400&formatted=0"
        getData(from: url)
        // Do any additional setup after loading the view.
    }
    
    private func getData(from url: String) {
       let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data , error == nil else {
                return
            }
            var result: Response!
            do {
                let decoder = JSONDecoder()
                result = try decoder.decode(Response.self, from: data)
                print(result)
            } catch {
                print("Failed: \(error.localizedDescription)")
            }
            guard let final = result else {
                return
            }
            print(final.status)
            print(final.results.sunset)
            print(final.results.sunrise)
        })
        task.resume()
    }

}


