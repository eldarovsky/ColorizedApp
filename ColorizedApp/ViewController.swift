//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Эльдар Абдуллин on 25.05.2023.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var redColorPalette: UIView!
    @IBOutlet var greenColorPalette: UIView!
    @IBOutlet var blueColorPalette: UIView!

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!

    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupValueLabels()
    }

    override func viewWillLayoutSubviews() {
        redColorPalette.layer.cornerRadius = 20
        redColorPalette.layer.borderWidth = 2
        redColorPalette.layer.borderColor = UIColor.black.cgColor

        greenColorPalette.layer.cornerRadius = 20
        greenColorPalette.layer.borderWidth = 2
        greenColorPalette.layer.borderColor = UIColor.black.cgColor

        blueColorPalette.layer.cornerRadius = 20
        blueColorPalette.layer.borderWidth = 2
        blueColorPalette.layer.borderColor = UIColor.black.cgColor

        redValueLabel.text = String(format: "%.2f", redColorSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)
    }

    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redColorSlider.value)
//        redColorPalette.alpha = CGFloat(redColorSlider.value.rounded())
        redColorPalette.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(redColorSlider.value))
    }

    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)
//        greenColorPalette.alpha = CGFloat(greenColorSlider.value.rounded())
        greenColorPalette.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(greenColorSlider.value))
    }

    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)
//        blueColorPalette.alpha = CGFloat(blueColorSlider.value.rounded())
        blueColorPalette.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(blueColorSlider.value))
    }

    // MARK: - Private Methods
    private func setupSliders() {
        redColorSlider.value = 0
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1

        greenColorSlider.value = 0
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1

        blueColorSlider.value = 0
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
    }

    private func setupValueLabels() {
        redValueLabel.text = redColorSlider.value.formatted()
        greenValueLabel.text = greenColorSlider.value.formatted()
        blueValueLabel.text = blueColorSlider.value.formatted()
    }
}

