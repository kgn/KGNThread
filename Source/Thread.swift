//
//  Thread.swift
//  KGNThread
//
//  Created by David Keegan on 1/24/15.
//  Copyright (c) 2014 David Keegan. All rights reserved.
//

import Foundation

private let diskQueue = dispatch_queue_create("kgn.thread.disk", DISPATCH_QUEUE_SERIAL)

public struct Thread {

    private static func Dispatch(delay delay: NSTimeInterval?, queue: dispatch_queue_t, _ block: dispatch_block_t) {
        if delay != nil {
            let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay! * Double(NSEC_PER_SEC)))
            dispatch_after(delayTime, queue, block)
        } else {
            dispatch_async(queue, block)
        }
    }

    /// Global threads
    public struct Global {

        /**
         Dispatch on the high priority global queue.

         - Parameter delay: Optional delay in seconds to wait before dispatching.
         - Parameter block: The method to execute on the queue.
         */
        public static func High(delay delay: NSTimeInterval? = nil, block: dispatch_block_t) {
            Thread.Dispatch(delay: delay, queue: dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), block)
        }

        /**
         Dispatch on the low priority global queue.

         - Parameter delay: Optional delay in seconds to wait before dispatching.
         - Parameter block: The method to execute on the queue.
         */
        public static func Low(delay delay: NSTimeInterval? = nil, block: dispatch_block_t) {
            Thread.Dispatch(delay: delay, queue: dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), block)
        }


        /**
         Dispatch on the default priority global queue.

         - Parameter delay: Optional delay in seconds to wait before dispatching.
         - Parameter block: The method to execute on the queue.
         */
        public static func Default(delay delay: NSTimeInterval? = nil, block: dispatch_block_t) {
            Thread.Dispatch(delay: delay, queue: dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
        }

        /**
         Dispatch on the background priority global queue.

         - Parameter delay: Optional delay in seconds to wait before dispatching.
         - Parameter block: The method to execute on the queue.
         */
        public static func Background(delay delay: NSTimeInterval? = nil, block: dispatch_block_t) {
            Thread.Dispatch(delay: delay, queue: dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block)
        }

    }

    /**
     Dispatch on a serial queue reserved for disk access.
     If you use this thread for all disk access in your application it will
     ensure that all disk access happens on the same background serial queue.

     - Parameter delay: Optional delay in seconds to wait before dispatching.
     - Parameter block: The method to execute on the queue.
     */
    public static func Disk(delay delay: NSTimeInterval? = nil, block: dispatch_block_t) {
        Thread.Dispatch(delay: delay, queue: diskQueue, block)
    }

    /**
     Dispatch on the main thread queue.

     - Parameter delay: Optional delay in seconds to wait before dispatching.
     - Parameter block: The method to execute on the queue.
     */
    public static func Main(delay delay: NSTimeInterval? = nil, block: dispatch_block_t) {
        Thread.Dispatch(delay: delay, queue: dispatch_get_main_queue(), block)
    }
    
}
