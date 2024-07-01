//
//  UserPostVC+CustomMethods.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 30/05/24.
//

import Foundation
extension UserPostVC{
    
    // TODO: - CUSTOM INITIAL SETUP
    internal func initialSetup(){
        self.fetchDataViaNSURLSession()
    }
    
    // MARK: - WEB SERVICE METHODS
    // TODO: FETCH DATA FROM API BY NSURLSESSION
    internal func fetchDataViaNSURLSession(){
        guard let endPoint = URL(string: "https://dummyjson.com/posts/1") else{
            print("endPoint is not valid url")
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: endPoint) {(data,response,error)in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                self.myDetails = try decoder.decode(Post.self, from: data)
                
                DispatchQueue.main.async {
                    self.configure(with: self.myDetails)
                }
            }
            catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
    // MARK: - USER DEFINED METHODS (UI UPDATE WITH API DATA CONFIGURE())
    // TODO: CONFIGURE WITH<INFO:SuperheroModel?>
    internal func configure(with info:Post?){
        if let info = info{
            self.titleLabel.text = "Title: \(info.title)"
            self.bodyLabel.text = "Body: \(info.body)"
            self.tagsLabel.text = "Tag: \(info.tags)"
            self.likesLabel.text = "Likes: \(info.reactions.likes)"
            self.dislikesLabel.text = "Dislikes: \(info.reactions.dislikes)"
            self.viewsLabel.text = "Likes: \(info.views)"
            self.userIdLabel.text = "UserID: \(info.userId)"
        }
    }
}
