//
//  LargeImageViewController.swift
//  SlideShowApp
//
//  Created by 近藤佑斗 on 2018/01/08.
//  Copyright © 2018年 yuuto.kondou. All rights reserved.
//

import UIKit




class LargeImageViewController: UIViewController {
    
    
    @IBOutlet weak var SlideImage: UIImageView!
    
    
    var dispImageNo = 0     /// 表示画像の番号
    
    /// dispImageNoに対応する画像を表示
    func displayImage(){
        let imageNameArray = [
            "p01.jpeg",
            "p02.jpeg",
            "p03.jpeg",
            ]
        
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        
        SlideImage.image = image
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
