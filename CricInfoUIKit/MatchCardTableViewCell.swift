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
        label.text="2024-01-23"
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        return label
    }()
    lazy var matchType:UILabel={
        let label=UILabel()
        label.text="t20"
        label.translatesAutoresizingMaskIntoConstraints=false
        label.textColor = .black
        return label
    }()
    
    func config(time:String, type:String){
        timeAndDate.text=time
        matchType.text=type
    }
    func setupUI(){
        contentView.addSubview(uiView)
        uiView.addSubview(timeAndDate)
        uiView.addSubview(matchType)
        
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
            matchType.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -10)
            
        ])
    }
    
}
//
//#Preview{
//    MatchCardTableViewCell(style: UITableViewCell.CellStyle, reuseIdentifier: "Cell")
//}
