//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Bradley White on 9/12/14.
//  Copyright (c) 2014 Code by Brad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var breedLabel: UILabel!
    @IBOutlet var randomFactLabel: UILabel!
    
    
    var myTigers:[Tiger] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengal"
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.age = 2
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        //println("My Tiger's name is: \(myTiger.name) and its breed is \(myTiger.breed) and the image is \(myTiger.image)")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.age = 4
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.age = 5
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        self.myImageView.image = myTiger.image
        self.nameLabel.text = myTiger.name
        self.ageLabel.text = "\(myTiger.age)"
        self.breedLabel.text = myTiger.breed
        self.randomFactLabel.text = myTiger.randomFact()
        
        self.myTigers += [myTiger, secondTiger, thirdTiger, fourthTiger]
        myTiger.chuff()
        myTiger.chuffANumberOfTimes(3)
        myTiger.chuffANumberOfTimes(3, isLoud: false)
        
        
        for var i = 0; i < myTigers.count; i++ {
            var tiger = myTigers[i]
            tiger.age = tiger.ageInTigerYearsFromAge(tiger.age)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        var randomIndex = arc4random_uniform(UInt32(myTigers.count))
        
        while currentIndex == Int(randomIndex) {
            randomIndex = arc4random_uniform(UInt32(myTigers.count))
        }
        
        self.currentIndex = Int(randomIndex)
        
        let myTiger = myTigers[Int(randomIndex)]
        
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = myTiger.image
            self.nameLabel.text = myTiger.name
            self.ageLabel.text = "\(myTiger.age)"
            self.breedLabel.text = myTiger.breed
            self.randomFactLabel.text = myTiger.randomFact()
            
            }, completion: { (finished: Bool) -> () in})
    }

}

