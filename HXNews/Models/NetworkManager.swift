//
//  NetworkManager.swift
//  HXNews
//
//  Created by Ayush Singh on 29/06/25.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts=[Post]()
    func fetchData(){
        if let url=URLComponents(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session=URLSession(configuration: .default)
            let task=session.dataTask(with: url.url!) { (data, response, error) in
                if error==nil{
                    let decoder=JSONDecoder()
                    if let safeData=data{
                        do{
                            let results=try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts=results.hits
                            }
                            
                        }catch{
                            print("Failed to decode: \(error)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
