//
//  KGNThreadTests.swift
//  KGNThreadTests
//
//  Created by David Keegan on 1/24/15.
//  Copyright © 2015 David Keegan. All rights reserved.
//

import XCTest
@testable import KGNThread

class KGNThreadTests: XCTestCase {

    func testMain() {
        let expectation = expectationWithDescription(#function)

        Thread.Main {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testMainDelay() {
        let expectation = expectationWithDescription(#function)

        Thread.Main(delay: 1) {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testDisk() {
        let expectation = expectationWithDescription(#function)

        Thread.Disk {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testDiskDelay() {
        let expectation = expectationWithDescription(#function)

        Thread.Disk(delay: 1) {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalHigh() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.High {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalHighDelay() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.High(delay: 1) {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalLow() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.Low {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalLowDelay() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.Low(delay: 1) {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalDefault() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.Default {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalDefaultDelay() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.Default(delay: 1) {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalBackground() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.Background {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

    func testGlobalBackgroundDelay() {
        let expectation = expectationWithDescription(#function)

        Thread.Global.Background(delay: 1) {
            expectation.fulfill()
        }

        waitForExpectationsWithTimeout(2, handler: nil)
    }

}
