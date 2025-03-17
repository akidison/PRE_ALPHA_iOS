//
//  PushwooshSwiftInterface.swift
//  PushwooshiOS
//
//  Created by André Kis on 04.03.25.
//  Copyright © 2025 Pushwoosh. All rights reserved.
//

import Foundation
import PushwooshCore
import PushwooshBridge

public extension Pushwoosh {
    
    static var LiveActivities: PWLiveActivities.Type {
        return __liveActivities()
    }
    
    static var Debug: PWDebug.Type {
        return __debug()
    }
}
