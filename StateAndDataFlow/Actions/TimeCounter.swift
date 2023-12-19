//
//  TimeCounter.swift
//  StateAndDataFlow
//
//  Created by Andrey Kovalev on 19.12.2023.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    var counter = 3
    var buttonTitle = "START"
    var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc
    private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "RESET"
        }
        
        objectWillChange.send()
    }
    
    private func buttonDidTapped () {
        if buttonTitle == "RESET" {
            counter = 3
            buttonTitle = "START"
    } else {
        buttonTitle = "WAIT..."
    }
    
    objectWillChange.send()
    
}
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
