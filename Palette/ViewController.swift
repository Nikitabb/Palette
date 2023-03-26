//
//  ViewController.swift
//  Palette
//
//  Created by Никита on 24.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var paletteView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 10
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted(.number.precision(.fractionLength(2)))
        changeColor(r: CGFloat(redSlider.value))
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted(.number.precision(.fractionLength(2)))
        changeColor(g: CGFloat(greenSlider.value))
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted(.number.precision(.fractionLength(2)))
        changeColor(b: CGFloat(blueSlider.value))
    }
    
    private func changeColor(r: CGFloat? = nil, g: CGFloat? = nil, b: CGFloat? = nil) {
        var redPalette: CGFloat = 0
        var greenPalette: CGFloat = 0
        var bluePalette: CGFloat = 0
        
        _ = paletteView.backgroundColor?.getRed(&redPalette, green: &greenPalette, blue: &bluePalette, alpha: nil)
        
        let red = r ?? redPalette
        let green = g ?? greenPalette
        let blue = b ?? bluePalette
        
        let newPalleteColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        paletteView.backgroundColor = newPalleteColor
    }
}

