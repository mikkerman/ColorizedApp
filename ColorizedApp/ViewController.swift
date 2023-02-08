//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Михаил Герман on 07.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
 
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColorChange()
        setupColorView()
    }
    
    // MARK: - SliderActions
    @IBAction func redsliderAction() {
        redSlider.value = Float(round(100 * redSlider.value) / 100)
        redLabel.text = redSlider.value.formatted()
        viewColorChange()
    }
    
  
    @IBAction func greenSliderAction() {
        greenSlider.value = Float(round(100 * greenSlider.value) / 100)
        greenLabel.text = greenSlider.value.formatted()
        viewColorChange()
    }
    
    @IBAction func blueSliderAction() {
        blueSlider.value = Float(round(100 * blueSlider.value) / 100)
        blueLabel.text = blueSlider.value.formatted()
        viewColorChange()
    }
    
    // MARK: - Private functions
    
   private func viewColorChange() {
        colorView.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: (1))
    }
    
    private func setupColorView() {
        colorView.layer.cornerRadius = 15
        redLabel.text = redSlider.minimumValue.formatted()
        greenLabel.text = greenSlider.minimumValue.formatted()
        blueLabel.text = blueSlider.minimumValue.formatted()
    }
    
   


}

