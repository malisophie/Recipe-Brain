//
//  Datahandler.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 22.09.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import Foundation
import SwiftUI

class Datahandler {

    static func getImage(_ url: String) -> Image? {
        let url = URL(string: url)
        guard let data = try? Data(contentsOf: url!) else {
            return Image(systemName: "camera")
        }
        guard let image = UIImage(data: data) else {
            return Image(systemName: "camera")
        }
        return Image(uiImage: image)
    }

    func getData(urlString: String) {
        self.loadJson(fromURLString: urlString) { (result) in
            switch result {
            case .success(let data):
                self.parse(jsonData: data)
            case .failure(let error):
                print(error)
            }
        }
    }

    func getHTML(from url: String) {
//        guard let url = URL(string: url) else {
//            return
//        }
//        let htmlString = try String(contentsOf: url)
    }

    private func loadJson(fromURLString urlString: String,
                          completion: @escaping (Result<Data, Error>) -> Void) {
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error))
                }

                if let data = data {
                    completion(.success(data))
                }
            }

            urlSession.resume()
        }
    }

    private func parse(jsonData: Data) {
        do {
            let decodedData = try JSONDecoder().decode(DemoData.self,
                                                       from: jsonData)

            print("Title: ", decodedData.title)
            print("Description: ", decodedData.description)
            print("===================================")
        } catch {
            print("decode error")
        }
    }
}

struct DemoData: Codable {
    let title: String
    let description: String
}
