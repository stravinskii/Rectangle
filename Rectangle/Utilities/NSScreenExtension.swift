//
//  NSScreenExtension.swift
//  Rectangle
//
//  Created by Mauricio Gs on 6/18/22.
//  Copyright © 2022 Ryan Hanson. All rights reserved.
//

import Foundation
import Quartz

extension NSScreen {
    func isBuiltInDisplay() -> Bool {
        let screenNumber = deviceDescription[NSDeviceDescriptionKey(rawValue: "NSScreenNumber")]
        let directDispalyId = screenNumber as? CGDirectDisplayID ?? 0
        return CGDisplayIsBuiltin(directDispalyId) != 0
    }
}
