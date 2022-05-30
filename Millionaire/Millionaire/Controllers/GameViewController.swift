//
//  GameViewController.swift
//  Millionaire
//
//  Created by Аня on 22.05.2022.
//

import UIKit

protocol  GameViewControllerDelegate: AnyObject {
    func didEndGame(withResult result: GameSession)
}

class GameViewController: UIViewController {

    @IBOutlet weak var logoMillionare: UIImageView!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var endGameButton: UIButton!
    @IBOutlet weak var answerD: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var youRightAnswer: UILabel!
    
    let game = Game.shared
    var complexity = Game.shared.controlGame
    private var gameSession: GameSession? = GameSession()

    
    private var GameStrategy: OptionStrategy {
        switch complexity {
        case .defoltQuestions:
            return defoltQuestionsStrategy()
        case .randomQuestions:
            return randomQuestionsStrategy()
        default:
            return defoltQuestionsStrategy()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}





