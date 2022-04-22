//
//  FriendCollection.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

class FriendCollection: UIView, NibLoadable {

    @IBOutlet weak var collectionView: UICollectionView!
    var friends: [Friend] = []
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupFromNib()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        var cellNib = UINib(nibName: "FriendsCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "FriendsCollectionViewCell")
        cellNib = UINib(nibName: "AddFriendCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "AddFriendCollectionViewCell")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFromNib()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        var cellNib = UINib(nibName: "FriendsCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "FriendsCollectionViewCell")
        cellNib = UINib(nibName: "AddFriendCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "AddFriendCollectionViewCell")
    }

    func setupFriends(friends: [Friend]) {
        self.friends = friends
        collectionView.reloadData()
    }
}

extension FriendCollection: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friends.count + 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddFriendCollectionViewCell", for: indexPath) as! AddFriendCollectionViewCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsCollectionViewCell", for: indexPath) as! FriendsCollectionViewCell
            cell.setup(with: friends[indexPath.row-1])
            return cell
        }
    }
    
    
}

extension FriendCollection: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 120.0)
    }
}
