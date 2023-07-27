//
//  ViewController.swift
//  Palette
//
//  Created by Никита on 27.07.2023.
//

import UIKit

final class ViewController: UIViewController {
   
    @IBOutlet var paletteView: UIView!
    
    @IBOutlet var redColorMeaning: UILabel!
    @IBOutlet var greenColorMeaning: UILabel!
    @IBOutlet var BlueColorMeaning: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 10
        
        redColorMeaning.text = String(format: "%0.2f", redColorSlider.value)
        greenColorMeaning.text = String(format: "%0.2f", greenColorSlider.value)
        BlueColorMeaning.text = String(format: "%0.2f", redColorSlider.value)
    }

    @IBAction private func setupRedColorSlider(_ sender: Any) {
        redColorMeaning.text = String(format: "%0.2f", redColorSlider.value)
        setupBackgroundColor()
    }
    
    @IBAction private func setupGreenColorSlider(_ sender: Any) {
        greenColorMeaning.text = String(format: "%0.2f", greenColorSlider.value)
        setupBackgroundColor()
    }
    
    @IBAction private func setupBlueColorSlider(_ sender: Any) {
        BlueColorMeaning.text = String(format: "%0.2f", blueColorSlider.value)
        setupBackgroundColor()
    }
    private func setupBackgroundColor() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
}

