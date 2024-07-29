//
//  MatchDetailViewController.swift
//  CricInfoUIKit
//
//  Created by Mohd Kashif on 29/07/24.
//

import Foundation
import UIKit
class MatchDetailViewController:UIViewController{
    private var cell:MatchesList
    init(cell: MatchesList) {
        self.cell = cell
        print(self.cell,"Cell")
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title="Match Details"
        view.backgroundColor = .cardBackground
    }
}
