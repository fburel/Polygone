//
//  PolygoneViewController.swift
//  Polygone
//
//  Created by florian BUREL on 22/09/2015.
//  Copyright (c) 2015 florian BUREL. All rights reserved.
//

import UIKit

class PolygoneViewController: UIViewController {

    private let polygone = Polygone()
    
    @IBOutlet weak var drawingView: PolygneView!
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        polygone.numberOfSide = (sender.value as NSNumber).integerValue
        updateUI()
        
    }
    
    private func updateUI()
    {
        displayLabel.text = polygone.name
        drawingView.edges = polygone.numberOfSide
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
}
