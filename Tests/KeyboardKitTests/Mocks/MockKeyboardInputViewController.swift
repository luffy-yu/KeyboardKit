//
//  MockKeyboardInputViewController.swift
//  KeyboardKitTests
//
//  Created by Daniel Saidi on 2019-05-28.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import MockingKit

class MockKeyboardInputViewController: KeyboardInputViewController, Mockable {
    
    lazy var addKeyboardGesturesRef = MockReference(addKeyboardGestures)
    
    let mock = Mock()
    
    override func addKeyboardGestures(to button: KeyboardButton) {
        invoke(addKeyboardGesturesRef, args: (button))
    }
}
