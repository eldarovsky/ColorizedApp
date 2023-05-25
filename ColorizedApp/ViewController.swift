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
    @IBOutlet var colorPalette: UIView!

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!

    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        colorPalette.layer.cornerRadius = 40
        colorPalette.layer.cornerCurve = .continuous
        setupSliders()
        setupValueLabels()
    }

    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redColorSlider.value)

        colorPalette.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }

    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)

        colorPalette.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }

    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)

        colorPalette.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
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
        redValueLabel.text = String(format: "%.2f", redColorSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
}
