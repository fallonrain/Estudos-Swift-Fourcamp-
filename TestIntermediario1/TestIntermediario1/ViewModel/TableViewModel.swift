//
//  TableViewModel.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/4/22.
//

import Foundation
import Alamofire

class TableViewModel {
    
    var advice: Welcome = Welcome(slip: Slip(id: 0,
                                            advice: ""))
    func adviceAPIRequest(completion: @escaping (Bool, Error?) -> Void)
    {
        let url = "https://api.adviceslip.com/advice"
        
        AF.request(url).responseJSON
        {response in
            if let data = response.data
            {
                do
                {
                    let result: Welcome = try JSONDecoder().decode(Welcome.self, from: data)
                    
                    self.advice = result
                    
                    completion(true, nil)
                }
                catch
                {
                    completion(false, error)
                }
            }
        }
    }
}
