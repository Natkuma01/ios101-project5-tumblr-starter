//
//  ViewController.swift
//  ios101-project5-tumbler
//

import UIKit
import NukeExtensions

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet weak var tableView: UITableView!

    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        fetchPosts()
    }



    func fetchPosts() {
        let url = URL(string: "https://api.tumblr.com/v2/blog/humansofnewyork/posts/photo?api_key=1zT8CiXGXFcQDyMFG7RtcfGLwTdDjFUJnZzKJaWTmgyK4lKGYk")!
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("❌ Error: \(error.localizedDescription)")
                return
            }

            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, (200...299).contains(statusCode) else {
                print("❌ Response error: \(String(describing: response))")
                return
            }

            guard let data = data else {
                print("❌ Data is NIL")
                return
            }

            do {
                let blog = try JSONDecoder().decode(Blog.self, from: data)

                DispatchQueue.main.async { [weak self] in
                    
                    self?.posts = blog.response.posts

                    


                    print("✅ We got \(self?.posts.count ?? 0) posts!")
                    for post in self?.posts ?? [] {
                        print("🍏 Summary: \(post.summary)")
                    }
                    self?.tableView.reloadData()
                }

            } catch {
                print("❌ Error decoding JSON: \(error.localizedDescription)")
            }
        }
        session.resume()
    }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return posts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
            let post = posts[indexPath.row]
            
            cell.postTextLabel.text = post.summary
            
            if let photo = post.photos.first {
                let url = photo.originalSize.url
                NukeExtensions.loadImage(with: url, into: cell.postImageView)
            }
            return cell

        }
    
}
