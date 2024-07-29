//
//  ViewController.swift
//  CricInfoUIKit
//
//  Created by Mohd Kashif on 28/07/24.
//

import UIKit

class ViewController: UIViewController {
    private let vm=MatchViewModel()
    private var matchInfo:MatchResponse=MatchResponse(data: [])

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    lazy var tableView:UITableView={
        let table=UITableView()
        table.translatesAutoresizingMaskIntoConstraints=false
        table.separatorStyle=UITableViewCell.SeparatorStyle.none
        table.delegate=self
        table.dataSource=self
        return table
    }()
    
    func setupUI(){
        title="Fixtures"
        tableView.register(MatchCardTableViewCell.self, forCellReuseIdentifier: "Cell")
        let stack=UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints=false
        view.addSubview(stack)
        stack.addArrangedSubview(tableView)
        getMatch()
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            stack.widthAnchor.constraint(equalTo: view.widthAnchor),
            stack.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])
    }
    
    func getMatch(){
        vm.getMatchDetails { data, error in
            if error==nil{
                DispatchQueue.main.async {
                    self.matchInfo=data
                    self.tableView.reloadData()
                }
            }
        }
    }


}
extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        matchInfo.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MatchCardTableViewCell else {fatalError("")}
        
        let matchInfo=matchInfo.data[indexPath.row]
        cell.config(matchInfo)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = matchInfo.data[indexPath.row]
        navigationController?.pushViewController(MatchDetailViewController(cell: cell), animated: true)
        
    }
}

