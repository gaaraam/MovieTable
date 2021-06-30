//
//  MovieVO.swift
//  MovieTable
//
//  Created by 이가람 on 2021/06/30.
//

import Foundation


// Value Object 패턴 - 데이터 저장을 전담하는 클래스를 별도로 분리
class MovieVO{
    var thumbnail: String? // 영화 섬네일 이미지 주소
    var title: String? // 영화 제목
    var description: String? // 영화 설명
    var detail: String? // 상세정보
    var opendate: String? // 개봉일
    var rating: Double? // 평점
}
