//
//  ListViewController.swift
//  MovieTable
//
//  Created by 이가람 on 2021/06/30.
//

import UIKit

class ListViewController: UITableViewController{
        // 테이블 뷰를 구성할 리스트 데이터
    var list = [MovieVO]()
    
    override func viewDidLoad() {
        var mvo = MovieVO( )
        mvo.title = "센과 치히로의 행방불명"
        mvo.description = "치히로의 기이한 경험"
        mvo.opendate = "2001-07-00"
        mvo.rating = 9.00
        // 배열에 추가
        self.list.append(mvo)
        
        mvo = MovieVO( )
        mvo.title = "하울의 움직이는 성"
        mvo.description = "하울과 소피의 사랑이야기"
        mvo.opendate = "2004-00-00"
        mvo.rating = 8.00
        // 배열에 추가
        self.list.append(mvo)
        
        mvo = MovieVO( )
        mvo.title = "이웃집 토토로"
        mvo.description = "토토로는 괴물이었을까?"
        mvo.opendate = "1988-00-00"
        mvo.rating = 8.00
        // 배열에 추가
        self.list.append(mvo)
    }
}
