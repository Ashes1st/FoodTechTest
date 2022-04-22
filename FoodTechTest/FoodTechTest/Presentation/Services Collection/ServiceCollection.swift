//
//  ServiceCollection.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation
import UIKit

class ServiceCollection: UIView, NibLoadable {

    @IBOutlet weak var collectionView: UICollectionView!
    var serviceItems: [ServiceItem] = []
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupFromNib()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        let cellNib = UINib(nibName: "ServiceCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "ServiceCollectionViewCell")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFromNib()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        let cellNib = UINib(nibName: "ServiceCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "ServiceCollectionViewCell")
    }

    func setupServices(with items: [ServiceItem]) {
        self.serviceItems = items
        self.collectionView.reloadData()
    }
}

extension ServiceCollection: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serviceItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceCollectionViewCell", for: indexPath) as! ServiceCollectionViewCell
        cell.setup(service: serviceItems[indexPath.row])
        return cell
    }
    
    
}

extension ServiceCollection: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 100.0)
    }
}
