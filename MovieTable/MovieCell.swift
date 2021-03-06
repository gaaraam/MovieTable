//
//  MovieCell.swift
//  MovieTable
//
//  Created by 이가람 on 2021/06/30.
//

import UIKit
class MovieCell: UITableViewCell {
    
    @IBOutlet var title: UILabel! // 영화제목
    @IBOutlet var opendate: UILabel! // 개봉일
    @IBOutlet var desc: UILabel! // 설명
    @IBOutlet var rating: UILabel! // 평점
    @IBOutlet var thumbnail: UIImageView! // 섬네일 이미지
}
