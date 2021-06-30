//
//  ListViewController.swift
//  MovieTable
//
//  Created by 이가람 on 2021/06/30.
//

import UIKit

class ListViewController: UITableViewController{
    
    // 튜플 아이템으로 구성된 데이터 세트
        var datest = [
            ("센과 치히로의 행방불명", "치히로의 기이한 경험", "2001-00-00",9.00),
            ("하울의 움직이는 성", "하울과 소피의 사랑", "2004-00-00", 8.00),
            ("이웃집 토토로", "토토로는 괴물이었을까?", "1988-00-00", 8.00)
        ]
    
        // 테이블 뷰를 구성할 리스트 데이터
    lazy var list : [MovieVO] = {
        var datalist = [MovieVO]()
        for(title, desc, opendate, rating) in self.datest{
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            
            datalist.append(mvo)
        }
        return datalist
    }()
    
    override func viewDidLoad() {
        
}
}
