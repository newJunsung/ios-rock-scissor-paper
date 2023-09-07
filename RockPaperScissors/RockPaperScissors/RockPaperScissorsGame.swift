//
//  RockPaperScissorsGame.swift
//  RockPaperScissors
//
//  Created by JaeHyeok Sim on 2023/09/07.
//

import Foundation

struct RockPaperScissorsGame {
    private var turnOwner = true
    private var ownerName: String {
        get {
            turnOwner ? "사용자" : "컴퓨터"
        }
    }
    
    mutating func playMukJjiPpa() {
        do {
            try doRockPaperScissors()
            print(turnOwner ? "이겼습니다!" : "졌습니다!")
            try doMukJjiPpa(isPlayerTurn: turnOwner)
            print("\(ownerName) 승리")
        } catch PlayingGameException.zeroExit {
            print("게임 종료.")
        } catch {
            print("오류가 발생했습니다.")
        }
    }
    
    private func getHandType() throws -> Int {
        let playerInput = readLine() ?? "error"
        guard let playerHandType = Int(playerInput), (0...3).contains(playerHandType) else {
            throw PlayingGameException.invalidInputError
        }
        
        if playerHandType == 0 {
            throw PlayingGameException.zeroExit
        }
        
        return playerHandType
    }
    
    private func battle(_ player1HandType: Int, and player2HandType: Int) throws -> Bool {
        guard let player1HandShape = RockPaperScissors(rawValue: player1HandType), let player2HandShape = RockPaperScissors(rawValue: player2HandType) else {
            throw PlayingGameException.invalidInputError
        }
        
        if player1HandShape == player2HandShape {
            throw PlayingGameException.sameHand
        } else if player2HandShape < player1HandShape {
            return true
        } else {
            return false
        }
    }
    
    private mutating func doRockPaperScissors() throws {
        while true {
            print("가위(1), 바위(2), 보(3)! <종료: 0> : ", terminator: "")
            do {
                let playerHandType = try getHandType()
                guard let computerHandType = (1...3).randomElement() else {
                    throw PlayingGameException.invalidInputError
                }
                turnOwner = try battle(playerHandType, and: computerHandType)
                return
            } catch PlayingGameException.invalidInputError {
                print("잘못된 입력입니다. 다시 시도해주세요.")
            } catch PlayingGameException.sameHand {
                print("비겼습니다.")
            } catch {
                throw error
            }
        }
    }
    
    private mutating func doMukJjiPpa(isPlayerTurn: Bool) throws {
        turnOwner = isPlayerTurn
        while true {
            print("[\(ownerName) 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> : ", terminator: "")
            do {
                let playerHandType = try getHandType()
                guard let computerHandType = (1...3).randomElement() else {
                    throw PlayingGameException.unknownError
                }
                turnOwner = try battle(playerHandType, and: computerHandType)
            } catch PlayingGameException.sameHand {
                return
            } catch PlayingGameException.invalidInputError {
                print("잘못된 입력입니다. 다시 시도해주세요.")
                turnOwner = false
            }
            print("\(ownerName)의 턴입니다.")
        }
    }
}