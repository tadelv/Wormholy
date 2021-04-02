//
//  SwizzlingTests.swift
//  Wormholy-iOS Tests
//
//  Created by Vid Tadel on 02/04/2021.
//  Copyright © 2021 Wormholy. All rights reserved.
//

import XCTest
@testable import Wormholy

class SwizzlingTests: XCTestCase {
  func testSwizzlingWorks() {
    Wormholy.awake()
    let config = URLSessionConfiguration.default
//    print(config.protocolClasses)
    XCTAssertNotNil(config.protocolClasses?.contains(where: { type -> Bool in
      type == CustomHTTPProtocol.self
    }))
    let ephConfig = URLSessionConfiguration.ephemeral
//    print(ephConfig.protocolClasses)
    XCTAssertNotNil(ephConfig.protocolClasses?.contains(where: { type -> Bool in
      type == CustomHTTPProtocol.self
    }))
  }
}
