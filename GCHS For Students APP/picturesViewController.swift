//
//  picturesViewController.swift
//  GCHS For Students APP
//
//  Created by Pralay T Ray (Student) on 12/15/22.
//

import Foundation
import UIKit

class picturesViewController: UIViewController {
          var imageNamesArrayTwo: [UIImage] = []
          var imageNamesArrayThree: [UIImage] = []
          var imageNamesArrayFour: [UIImage] = []
          @IBOutlet weak var SlideShowViewerTwo: UIImageView!
          @IBOutlet weak var SlideShowViewerThree: UIImageView!
          @IBOutlet weak var SlideShowViewerFour: UIImageView!
          let seven = UIImage(named: "7")
          let eight = UIImage(named: "8")
          let nine = UIImage(named: "9")
          let ten = UIImage(named: "10")
          let eleven = UIImage(named: "11")
          let twelve = UIImage(named: "12")
          let thirteen = UIImage(named: "13")
          let fourteen = UIImage(named: "14")
          let fifteen = UIImage(named: "15")
          var imageNamesTwo = ["7", "8", "9"]
          var imageNamesThree = ["10", "11", "12"]
          var imageNamesFour = ["13", "14", "15"]
        var count = 0
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
          self.SlideShowViewerTwo.image = UIImage(named: self.imageNamesTwo[self.count % self.imageNamesTwo.count]) //Slideshow logic
          self.SlideShowViewerThree.image = UIImage(named: self.imageNamesThree[self.count % self.imageNamesThree.count]) //Slideshow logic
          self.SlideShowViewerFour.image = UIImage(named: self.imageNamesFour[self.count % self.imageNamesFour.count]) //Slideshow logic
          self.count += 1
  }
      timer.fire() //Starts timer
    }
    
  }










