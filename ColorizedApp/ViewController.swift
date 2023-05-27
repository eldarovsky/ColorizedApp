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
        setupColor()
        setupValueLabels()
    }

    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redColorSlider.value)
        setupColor()
    }

    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        setupColor()
    }

    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)
        setupColor()
    }

    // MARK: - Private Methods
    private func setupColor() {
        colorPalette.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }

    private func setupValueLabels() {
        redValueLabel.text = String(format: "%.2f", redColorSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
}

