//
//  ViewController.swift
//  GCHS For Students APP
//
//  Created by Pralay T Ray (Student) on 10/17/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SlideShowViewer: UIImageView!
    var imageNames = ["1","2","3","4","5","6"]//List of image names
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
            self.SlideShowViewer.image = UIImage(named: self.imageNames.randomElement()!) //Slideshow logic
        }
        timer.fire() //Starts timer
        //timer.invalidate() //Stops timer
    }
}
