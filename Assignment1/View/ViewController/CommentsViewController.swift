//
//  CommentsViewController.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var CommentTableView: UITableView!
    var commentViewModel : CommentsViewModel = CommentsViewModel()
    var commentsTableData: CommentsResponse? = nil
    var postId: Int? = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CommentTableView.register(UINib(nibName: "CommentsTableViewCell", bundle: nil), forCellReuseIdentifier: "CommentsTableViewCell")
        self.CommentTableView.delegate = self
        self.CommentTableView.dataSource = self
        self.setUpUI()
    }
    
    func setUpUI() {
        commentViewModel.getCommentsData(commentRequest: postId ?? 0, completion: { commentsApiResponse in
            if commentsApiResponse != nil {
                self.commentsTableData = commentsApiResponse
                DispatchQueue.main.async {
                    self.CommentTableView.reloadData()
                }
            }
        })
    }
    
}

extension CommentsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CommentsTableViewCell", for: indexPath) as? CommentsTableViewCell else {
            return UITableViewCell()
         }
        cell.commentLabel.text = commentsTableData?[indexPath.row].body
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentsTableData?.count ?? 0
    }
}
