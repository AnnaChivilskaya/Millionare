//
//  Question.swift
//  Millionaire
//
//  Created by Аня on 17.05.2022.
//

import UIKit
import CloudKit

struct Questions {
    var question: String
    var oneAnswer: String
    var twoAnswer: String
    var threeAnswer: String
    var fourAnswer: String
    var rightAnswer: String
    
    func RightAnswer(answerRightPlayer: String) -> Bool {
        return answerRightPlayer == rightAnswer
    }
}

enum AllQuestions: CaseIterable {
    case one
    case two
    case three
    case four
    case five
    
    var questions: Questions {
        switch self {
        case .one:
            return Questions(question: "Что такое десница?", oneAnswer: "Правая рука", twoAnswer: "Глаз", threeAnswer: "Шея", fourAnswer: "Брови",  rightAnswer: "Правая рука")
        case .two:
            return Questions(question: "Какое животное имеет второе название - кугуар?", oneAnswer: "Оцелот", twoAnswer: "Леопард", threeAnswer: "Пума", fourAnswer: "Пантера",  rightAnswer: "Пантера")
        case .three:
            return Questions(question: "В какое море впадает река Урал?", oneAnswer: "Азовское", twoAnswer: "Средиземное", threeAnswer: "Черное", fourAnswer: "Каспийское",  rightAnswer: "Каспийское")
        case .four:
            return Questions(question: "О  чем писал Грибоедов, отмечая, что он -нам сладок и приятен?", oneAnswer: "Дым Отечества", twoAnswer: "Дух купечества", threeAnswer: "Дар пророчества", fourAnswer: "Пыл девичества",  rightAnswer: "Дух Отечества")
        case .five:
            return Questions(question: "Какой химический элемент назван в честь злого подземного гнома?", oneAnswer: "Гафний", twoAnswer: "Кобальт", threeAnswer: "Бериллий", fourAnswer: "Теллур",  rightAnswer: "Кобальт")
                                
        }
    }
}
