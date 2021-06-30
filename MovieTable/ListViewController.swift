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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 주어진 행에 맞는 데이터 소스를 읽어온다.
        let row = self.list[indexPath.row]
        // 테이블 셀 객체를 직접 생성하는 대신 큐로부터 가져옴
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")!
       // --> 추가되는 부분 시작
        // 영화제목이 표시될 레이블을 title 변수로 받음
        let title = cell.viewWithTag(101) as? UILabel
        // 영화요약이 표시될 레이블을 desc 변수로 받음
        let desc = cell.viewWithTag(102) as? UILabel
        // 영화 개봉일이 표시될 레이블을 opendate 변수로 받음
        let opendate = cell.viewWithTag(103) as? UILabel
        // 영화 별점이 표시될 레이블을 rating 변수로 받음
        let rating = cell.viewWithTag(104) as? UILabel
        // 데이터 소스에 저장된 값을 각 레이블 변수에 할당
        title?.text = row.title
        desc?.text = row.description
        opendate?.text = row.opendate
        rating?.text = "\(row.rating!)"
        // <--- 추가되는 부분 끝
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row)번째 행입니다.")
    }
}
