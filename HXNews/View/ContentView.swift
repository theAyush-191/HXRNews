//
//  ContentView.swift
//  HXNews
//
//  Created by Ayush Singh on 28/06/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager=NetworkManager()
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: Text(post.title)){
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }.navigationTitle(Text("HX News"))

        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//struct Post:Identifiable{
//    let id:String
//    let title:String
//}

//let posts=[
//    Post(id:"1",title:"Hello"),
//    Post(id:"2",title:"Bonjour"),
//    Post(id:"3",title:"Hola")
//]
