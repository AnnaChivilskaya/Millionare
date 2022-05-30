//
//  SettingsViewController.swift
//  Millionaire
//
//  Created by Аня on 30.05.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    private var gameComplexity: Complexity {
        switch self.segmentedControl.selectedSegmentIndex {
        case 0:
            return .defoltQuestions
        case 1:
            return .randomQuestions
        default:
            return .defoltQuestions
        }
    }
    
    
    @IBAction func exitButtionInMenu(_ sender: Any) {
        Game.shared.controlGame = gameComplexity
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "Settings":
            guard let destination = segue.destination as? GameViewController else { return }
            
            destination.complexity = gameComplexity
        default:
            break
        }
    }
  
}
