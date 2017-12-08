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

        let image = screenImage()

        let activityViewController = UIActivityViewController(activityItems: [image],
                                                              applicationActivities: nil)

        present(activityViewController, animated: true, completion: {})
    }

    /// returns current view as a UIImage
    func screenImage() -> UIImage {
        // get the image
        // https://stackoverflow.com/questions/30696307/how-to-convert-a-uiview-to-an-image#33644345
        let renderer = UIGraphicsImageRenderer(bounds: view.bounds)
        let image = renderer.image { rendererContext in
            view.layer.render(in: rendererContext.cgContext)
        }
        return image
    }

}

