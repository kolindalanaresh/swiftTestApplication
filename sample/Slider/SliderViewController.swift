//
//  SliderViewController.swift
//  sample
//
//  Created by admin on 26/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.maximumValue = 20
        slider.maximumTrackTintColor = UIColor.blue
        slider.minimumTrackTintColor = UIColor.red
        
        slider.thumbTintColor = UIColor.orange
        
    }

    @IBAction func sliderChanged(_ sender: Any) {
        lab.text = String(slider.value)
    }
}
