//
//  AdviceModel.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/5/22.
//

import Foundation


struct Welcome: Codable
{
    let slip: Slip
}

struct Slip: Codable
{
    let id: Int
    let advice: String
}
