//
//  ViewController.swift
//  Multithreading_9
//
//  Created by Дмитрий Гусев on 23.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        afterBlock(seconds: 2, queue: .global()) {
//
//            DispatchQueue.main.async {
//                self.showAlert()
//            }
//
//            print(Thread.current)
//        }

        
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: nil, message: "Hello", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    func afterBlock(seconds: Int, queue: DispatchQueue = DispatchQueue.global(), completion: @escaping () -> ()) {
        queue.asyncAfter(deadline: .now() + .seconds(seconds)) {
            completion()
        }
        
    }


}

