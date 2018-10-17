//
//  ViewController.swift
//  test1017c
//
//  Created by moblie on 2018. 10. 17..
//  Copyright © 2018년 moblie. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController, NVActivityIndicatorViewable {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: CGFloat(237 / 255.0), green: CGFloat(85 / 255.0), blue: CGFloat(101 / 255.0), alpha: 1)
        

     
        let cellWidth = Int(self.view.frame.width/2)
        let cellHeight = Int(self.view.frame.height/2)

        let x = cellWidth
        let y = cellHeight
        
        
        let frame = CGRect(x: x, y: y, width: cellWidth / 2, height: cellHeight / 4)

        
        print(Int(self.view.frame.width), self.view.frame.height)
        print(cellWidth, cellHeight)
        
            let activityIndicatorView = NVActivityIndicatorView(frame: frame,type: NVActivityIndicatorType.pacman)
        
            activityIndicatorView.padding = 10
        
            self.view.addSubview(activityIndicatorView)
 
            activityIndicatorView.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            
            // Put your code which should be executed with a delay here
            
            activityIndicatorView.stopAnimating()
            
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            
            
            self.present(secondViewController, animated: true, completion: nil)
            
            
            
        })
            
        
        }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

