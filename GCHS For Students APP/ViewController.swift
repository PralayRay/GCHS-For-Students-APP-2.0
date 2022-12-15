//
//  ViewController.swift
//  GCHS For Students APP
//
//  Created by Pralay T Ray (Student) on 12/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SlideShowViewer: UIImageView!
    var imageNamesArray: [UIImage] = []

    let one = UIImage(named: "1")
    let two = UIImage(named: "2")
    let three = UIImage(named: "3")
    let four = UIImage(named: "4")
    let five = UIImage(named: "5")
    let six = UIImage(named: "6")

    var imageNamesOne = ["1","2","3", "4", "5", "6",] //List of image names
    var count = 0
            
    override func viewDidLoad() {
        super.viewDidLoad()
            let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
                    
                    self.SlideShowViewer.image = UIImage(named: self.imageNamesOne[self.count % self.imageNamesOne.count]) //Slideshow logic
                    
                    self.count += 1
        
}
        timer.fire() //Starts timer
    }
}
