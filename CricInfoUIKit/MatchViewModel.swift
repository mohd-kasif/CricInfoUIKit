//
//  MatchViewModel.swift
//  CricInfoUIKit
//
//  Created by Mohd Kashif on 28/07/24.
//

import Foundation

class MatchViewModel{
    func getMatchDetails(compeltion:@escaping (MatchResponse, Error?)->Void){
        guard let url=URL(string: "https://api.cricapi.com/v1/cricScore?apikey=476f56b5-b4cc-405b-af52-7467bbaab2f1") else {return}
        
        let request=URLRequest(url: url)
        
        let task=URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data=data, let response=response as? HTTPURLResponse else {return}
            
            if response.statusCode==200{
                    do{
                        let decodedData=try JSONDecoder().decode(MatchResponse.self, from: data)
                        compeltion(decodedData, nil)
                    } catch let error{
                        print(error, "errro while decoding")
                    }
                
                
            } else {
                print(response.statusCode, "status code")
            }
        }
        task.resume()
    }
    
}
