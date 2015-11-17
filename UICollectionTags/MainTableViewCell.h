//
//  MainTableViewCell.h
//  UICollectionTags
//
//  Created by Neylor Bagagi on 11/16/15.
//  Copyright © 2015 Neylor Bagagi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewCell : UITableViewCell <UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *tagCollectionView;

@end
