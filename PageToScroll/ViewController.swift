//
//  ViewController.swift
//  PageToScroll
//
//  Created by Kerwin Londono on 8/27/17.
//  Copyright © 2017 Kerwin Londono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0;
        
        print("Scrollview Width: \(scrollView.frame.size.width)");
        let scrollWidth = scrollView.frame.size.width;
        
        // Do any additional setup after loading the view, typically from a nib.
        for x in 0...2{
            
            let image = UIImage(named:"icon\(x).png");
            
            let imageView = UIImageView(image: image);
            
            
            images.append(imageView);
            
            var newX: CGFloat = 0.0;
            
            newX = scrollWidth/2 + scrollWidth * CGFloat(x);
            
            contentWidth += newX;
            
            scrollView.addSubview(imageView);
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150);
        }
        
        //scrollView.backgroundColor = UIColor.purple;
        scrollView.clipsToBounds = false;
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height);
        
        print("count \(images.count)");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

