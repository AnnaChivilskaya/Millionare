//
//  Game.swift
//  Millionaire
//
//  Created by Аня on 22.05.2022.
//

import UIKit

class Game {
    
    var results: [Int] = []
    static let shared = Game()
    var name = ""
    var GameSession: GameSession?
    var controlGame: Complexity?
    private let recordsCaretaker = RecordsCaretaker()
  
    
    var records = [Record]() {
        didSet {
            recordsCaretaker.save(records: self.records)
        }
    }
    
    private init() {
        records = recordsCaretaker.retrieveRecords()
    }
    
    
    func addRecord(record: Record) {
        records.append(record)
    }


}

