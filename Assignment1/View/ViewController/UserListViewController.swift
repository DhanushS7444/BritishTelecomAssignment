//
//  UserListViewController.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import UIKit

class UserListViewController: UIViewController {
    @IBOutlet weak var tableViewList: UITableView!
    let userViewModel : UserViewModel = UserViewModel()
    let postViewModel : PostViewModel = PostViewModel()
    var userTableData: UserResponse? = nil
    var postTableData: PostResponse? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
        self.tableViewList.register(UINib(nibName: "UserNameTitleTableViewCell", bundle: nil), forCellReuseIdentifier: "UserNameTitleTableViewCell")
        self.tableViewList.delegate = self
        self.tableViewList.dataSource = self
    }
    
    func setUpUI() {
        self.userList()
        self.postList()
    }
}

extension UserListViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserNameTitleTableViewCell", for: indexPath) as? UserNameTitleTableViewCell else {
           return UITableViewCell()
        }
        cell.userName.text = userTableData?[indexPath.row].username
        cell.title.text = postTableData?[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userTableData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let commentScreen = storyboard?.instantiateViewController(withIdentifier: "CommentsViewController") as? CommentsViewController {
            commentScreen.postId = userTableData?[indexPath.row].id
            self.navigationController?.pushViewController(commentScreen, animated: true)
        }
    }

}

extension UserListViewController {
    private func userList() {
        userViewModel.getUserData { userApiRespone in
            if userApiRespone != nil {
                self.userTableData = userApiRespone
                DispatchQueue.main.async {
                    self.tableViewList.reloadData()
                }
            }
        }
    }
    
    private func postList() {
        postViewModel.getPostData { postApiResponse in
            if postApiResponse != nil {
                self.postTableData = postApiResponse
                DispatchQueue.main.async {
                    self.tableViewList.reloadData()
                }
            }
        }
    }
}
