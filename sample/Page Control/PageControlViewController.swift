//
//  PageControlViewController.swift
//  sample
//
//  Created by admin on 28/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class PageControlViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    var movies: [String] = ["energy","energy","energy"]
    var moviestitle: [String] = ["bad-boys","joker","hollywood"]
    var frame = CGRect.zero
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = movies.count
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.red
        setupScreens()

        scrollView.delegate = self
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
    }
    
    func setupScreens() {
        for index in 0..<movies.count {
            // 1.
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            // 2.
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: movies[index])
            let label = UILabel(frame: CGRect(x: 0, y: 250, width: 200, height: 21))
            label.center = CGPoint(x: 160, y: 285)
            label.textAlignment = NSTextAlignment.center
            label.text = moviestitle[index]
            label.textColor = UIColor.red
            imgView.addSubview(label)
            self.scrollView.addSubview(imgView)
            
        }

        // 3.
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(movies.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }

}
