//
//  MatchCardTableViewCell.swift
//  CricInfoUIKit
//
//  Created by Mohd Kashif on 28/07/24.
//

import Foundation
import UIKit

class MatchCardTableViewCell:UITableViewCell{
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var uiView:UIView={
        let uiview=UIView()
        uiview.backgroundColor = .cardBackground
        uiview.layer.cornerRadius=10
        uiview.layer.borderWidth=1
        uiview.layer.shadowColor=UIColor.black.cgColor
        uiview.layer.shadowOpacity=0.2
        uiview.layer.shadowOffset=CGSize(width: 2, height: 3)
        uiview.layer.shadowRadius=10
        uiview.layer.borderColor=UIColor.darkGray.withAlphaComponent(0.3).cgColor
        uiview.translatesAutoresizingMaskIntoConstraints=false
    
        return uiview
    }()
    
    lazy var timeAndDate:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        return label
    }()
    
    lazy var team1:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        label.numberOfLines=0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var team2:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        label.numberOfLines=0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var matchType:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        return label
    }()
    
    lazy var t1Image:UIImageView={
        let image=UIImageView()
        image.translatesAutoresizingMaskIntoConstraints=false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds=true
        image.layer.cornerRadius=20
        image.layer.masksToBounds=true
        return image
    }()
    
    lazy var t2Image:UIImageView={
        let image=UIImageView()
        image.translatesAutoresizingMaskIntoConstraints=false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds=true
        image.layer.cornerRadius=20
        image.layer.masksToBounds=true
        return image
    }()
    
    lazy var vsLabel:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        label.font=UIFont.italicSystemFont(ofSize: 20)
        label.text="VS"
        return label
    }()
    
    lazy var matchStatus:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        label.font=UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    lazy var score1:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        return label
    }()
    
    lazy var score2:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        return label
    }()

    
    func setupUI(){
        contentView.addSubview(uiView)
        uiView.addSubview(timeAndDate)
        uiView.addSubview(matchType)
        uiView.addSubview(team1)
        uiView.addSubview(team2)
        uiView.addSubview(t1Image)
        uiView.addSubview(t2Image)
        uiView.addSubview(vsLabel)
        
        uiView.addSubview(score1)
        uiView.addSubview(score2)
        uiView.addSubview(matchStatus)
        
        //constraint
        
        NSLayoutConstraint.activate([
            uiView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10),
            uiView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            uiView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 9),
            uiView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -9),
            uiView.heightAnchor.constraint(equalToConstant: 200),
            
            timeAndDate.topAnchor.constraint(equalTo: uiView.topAnchor, constant: 10),
            timeAndDate.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 10),
            
            matchType.topAnchor.constraint(equalTo: uiView.topAnchor, constant: 10),
            matchType.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -10),
            
            team1.topAnchor.constraint(equalTo: timeAndDate.bottomAnchor, constant: 20),
            team1.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 10),
            team1.trailingAnchor.constraint(equalTo: uiView.centerXAnchor, constant: -5),
         
            team2.topAnchor.constraint(equalTo: matchType.bottomAnchor, constant: 20),
            team2.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -10),
            team2.leadingAnchor.constraint(equalTo: uiView.centerXAnchor, constant: 5),
            
            t1Image.widthAnchor.constraint(equalToConstant: 40),
            t1Image.heightAnchor.constraint(equalToConstant: 40),
            t2Image.widthAnchor.constraint(equalToConstant: 40),
            t2Image.heightAnchor.constraint(equalToConstant: 40),
            t1Image.topAnchor.constraint(equalTo: team1.bottomAnchor, constant: 10),
            t2Image.topAnchor.constraint(equalTo: team2.bottomAnchor, constant: 10),
            
            t1Image.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 10),
            t1Image.trailingAnchor.constraint(equalTo: uiView.centerXAnchor, constant: -5),
            
            t2Image.leadingAnchor.constraint(equalTo: uiView.centerXAnchor, constant: 5),
            t2Image.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -10),
            
            vsLabel.topAnchor.constraint(equalTo: team1.bottomAnchor, constant: 10),
            vsLabel.leadingAnchor.constraint(equalTo: t1Image.trailingAnchor, constant: 5),
            vsLabel.trailingAnchor.constraint(equalTo: t2Image.trailingAnchor, constant: -10),
            
            score1.topAnchor.constraint(equalTo: t1Image.bottomAnchor, constant: 10),
            score1.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 20),
            score1.trailingAnchor.constraint(equalTo: uiView.centerXAnchor, constant: -5),
            
            score2.topAnchor.constraint(equalTo: t2Image.bottomAnchor, constant: 10),
            score2.leadingAnchor.constraint(equalTo: uiView.centerXAnchor, constant: 20),
            score2.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -10),
            
//            matchStatus.bottomAnchor.constraint(equalTo: uiView.bottomAnchor, constant: -10),
//            matchStatus.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 10),
//            matchStatus.trailingAnchor.constraint(equalTo: uiView.trailingAnchor,constant: -10),
//            matchStatus.centerXAnchor.constraint(equalTo: uiView.centerXAnchor)
            
            matchStatus.bottomAnchor.constraint(equalTo: uiView.bottomAnchor, constant: -10),
                      matchStatus.centerXAnchor.constraint(equalTo: uiView.centerXAnchor),
                      matchStatus.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 10),
                      matchStatus.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -10)
            
        ])
    }
    
    
    func config(_ matchInfo:MatchesList){
        timeAndDate.text=matchInfo.dateTimeGMT?.dateFormmater()
        matchType.text=matchInfo.matchType
        team1.text=matchInfo.t1
        team2.text=matchInfo.t2
        score1.text=matchInfo.t1s
        score2.text=matchInfo.t2s
        matchStatus.text=matchInfo.status
        
        if let url1=URL(string: matchInfo.t1img ?? ""), let url2=URL(string: matchInfo.t2img ?? ""){
            DispatchQueue.global().async {
                if let data1=try? Data(contentsOf: url1), let data2=try? Data(contentsOf: url2){
                    DispatchQueue.main.async {[weak self] in
                        let image1=UIImage(data: data1)
                        let image2=UIImage(data: data2)
                        if let image1=image1, let image2=image2{
                            self?.t1Image.image=image1
                            self?.t2Image.image=image2
                        }
                    }
                }
            }
        }
    }
    
}
//
//#Preview{
//    MatchCardTableViewCell(style: UITableViewCell.CellStyle, reuseIdentifier: "Cell")
//}
