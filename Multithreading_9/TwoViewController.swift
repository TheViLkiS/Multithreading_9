//
//  TwoViewController.swift
//  Multithreading_9
//
//  Created by Дмитрий Гусев on 23.05.2023.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

////        for i in 0...200000 {
////            print(i)
////        }
//
//        DispatchQueue.global(qos: .utility).async {
//            var time = Date()
//            print(Date())
////            DispatchQueue.concurrentPerform(iterations: 200000) { i in
////                print(i)
//////                print(Thread.current)
////            }
//
//                    for i in 0...200000 {
//                        print(i)
//                    }
//            print(Date().timeIntervalSince(time))
//        }
        myInactiveQueue()

    }
    
    func myInactiveQueue() {
        let inactiveQueue = DispatchQueue(label: "The Swift Dev", attributes: [.concurrent, .initiallyInactive])
        
        inactiveQueue.async {
            print("Done!")
        }
        
        print("Not yet started...")
        inactiveQueue.activate()
        print("Activate!")
        inactiveQueue.suspend()
        print("Pause")
        inactiveQueue.resume()
        
    }
    
    
    
    func afterBlock(seconds: Int, queue: DispatchQueue = DispatchQueue.global(), completion: @escaping () -> ()) {
        queue.asyncAfter(deadline: .now() + .seconds(seconds)) {
            completion()
        }
        
    }
    
}
