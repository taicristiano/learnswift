//
//  ViewController.swift
//  AppDemon
//
//  Created by Tai Cristiano on 7/22/18.
//  Copyright © 2018 Tai Cristiano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelFirst: UILabel!
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBAction func loadImageInternet(_ sender: Any) {
        let url = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0_2nqm0H20gpO-Pf9BsBwuAYt3McWcb-6rFs37i244h71Lyrnkg")
        do {
            let data = try Data(contentsOf: url!)
            imageOutlet.image = UIImage(data: data)
        } catch {
            print("error")
        }
        
    }
    
    @IBAction func loadImageLocal(_ sender: Any) {
        imageOutlet.image = UIImage(named: "download.jpeg")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelFirst.text = "Hello Tai Cristiano"
        labelFirst.textAlignment = NSTextAlignment.center;
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "download.jpeg")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonFirst(_ sender: Any) {
        labelFirst.text = "Hello Dương quần thủng xin gái"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

