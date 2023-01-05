//
//  ImportFileJSON.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import Foundation

func readLocalJSONFile(forName name: String) -> Data? {
    
    do {
        if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
            let fileURL = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: fileURL)
            return data
        }
    } catch {
        print("erro: \(error)")
    }
    return nil
}

func parse(jsonData: Data) -> DataRecord? {
    do {
        let decoderData = try JSONDecoder().decode(DataRecord.self, from: jsonData)
        return decoderData
    } catch {
        print("erro: \(error)")
    }
    return nil
}
