//
//  OptionStrategy.swift
//  Millionaire
//
//  Created by Аня on 30.05.2022.
//

import UIKit

protocol OptionStrategy {
    func typeQuestions(in gameSession: GameSession?)
}

class defoltQuestionsStrategy: OptionStrategy {
    func typeQuestions(in gameSession: GameSession?) {
        guard let score = gameSession?.score else { return }
        
        switch score {
        case 0:
            gameSession?.questions = AllQuestions.allCases.randomElement()?.questions
        case 1:
            gameSession?.questions = AllQuestions.allCases.randomElement()?.questions
        case 2:
            gameSession?.questions = AllQuestions.allCases.randomElement()?.questions
        case 3:
            gameSession?.questions = AllQuestions.allCases.randomElement()?.questions
        case 4:
            gameSession?.questions = AllQuestions.allCases.randomElement()?.questions
        default:
            break
        }
    }
}

class randomQuestionsStrategy: OptionStrategy {
    func typeQuestions(in gameSession: GameSession?) {
        guard let score = gameSession?.score else { return }
    
        switch score {
        case 0:
            gameSession?.questions = AllQuestions.one.questions
        case 1:
            gameSession?.questions = AllQuestions.two.questions
        case 2:
            gameSession?.questions = AllQuestions.three.questions
        case 3:
            gameSession?.questions = AllQuestions.four.questions
        case 4:
            gameSession?.questions = AllQuestions.five.questions
        default:
            break
        }
    }
}
