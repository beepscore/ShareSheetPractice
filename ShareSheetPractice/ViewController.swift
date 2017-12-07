//
//  ViewController.swift
//  ShareSheetPractice
//
//  Created by Steve Baker on 12/7/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareButtonTapped(_ sender: Any) {

        let shareContent = "foo"
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString],
                                                              applicationActivities: nil)
        present(activityViewController, animated: true, completion: {})
    }
    
    
}

