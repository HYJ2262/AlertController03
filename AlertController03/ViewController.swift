//
//  ViewController.swift
//  AlertController03
//
//  Created by D7703_24 on 2019. 4. 11..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var returnLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btCamere(_ sender: Any) {
        let myAlertController = UIAlertController(title: "카메라 실행", message: "take a Picturt", preferredStyle: .actionSheet)
        //preferredStyle: .actionSheet 이거는 알림이 밑에서 뜨는거
        
        //UIAlertAction 정의
        // let cameraAction = UIAlertAction(title: "사진 촬영", style: .default, handler: nil)
        
        //후행closer 실행하는 거 : 라벨 텍스트 바꾸기
        let cameraAction = UIAlertAction(title: "사진촬영", style: .default){ (action:UIAlertAction) in
            self.returnLbl.text = "사진촬영을 실행"
            self.view.backgroundColor = UIColor.yellow
        }
        
       // let Album = UIAlertAction(title: "앨범", style: .default, handler: nil)
        let Album = UIAlertAction(title: "앨범", style: .default) { (action:UIAlertAction) in
            self.returnLbl.text = "앨범을 실행"
            self.view.backgroundColor = UIColor.gray
        }
        
        //let savePotho = UIAlertAction(title: "사진저장", style: .default, handler: nil)
        let savePhoto = UIAlertAction(title: "사진저장", style: .default) { (action:UIAlertAction) in
            self.returnLbl.text = "사진을 저장함"
            self.view.backgroundColor = UIColor.green
        }
        
        //취소버튼
        //let cancleAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let cancleAction = UIAlertAction(title: "취소", style: .cancel) { (action:UIAlertAction) in
            self.returnLbl.text = "실행이 취소됨"
            self.view.backgroundColor = UIColor.white
        }
        
        
        //삭제버튼
        //let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) { (action:UIAlertAction) in
            self.returnLbl.text = "삭제됨"
            self.view.backgroundColor = UIColor.red
        }
        
        
        
        //UIAlertAction을 UIAlertController에 등록(add)
        myAlertController.addAction(cameraAction)
        myAlertController.addAction(Album)
        myAlertController.addAction(savePhoto)
        myAlertController.addAction(cancleAction)
        myAlertController.addAction(deleteAction)
        
        
        self.present(myAlertController, animated: true, completion: nil)
    }
    
}

