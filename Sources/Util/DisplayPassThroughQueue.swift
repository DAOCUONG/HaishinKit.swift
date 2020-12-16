//
//  DisplayPassThroughQueue.swift
//  HaishinKit
//
//  Created by Dao on 12/15/20.
//  Copyright © 2020 Shogo Endo. All rights reserved.
//

import Foundation
import AVFoundation

final class DisplayPassThroughQueue: NSObject,DisplayQueuableItem {
    var isPaused: Bool = false
    weak var clockReference: DisplayLinkedQueueClockReference?

    weak var delegate: DisplayLinkedQueueDelegate?
    func enqueue(_ buffer: CMSampleBuffer) {
        guard isPaused == false else {
            
            return
        }
        delegate?.queue(buffer)
        
    }
    func stopRunning() {
        isPaused = true
    }

    func startRunning() {
        isPaused = false

    }
}

