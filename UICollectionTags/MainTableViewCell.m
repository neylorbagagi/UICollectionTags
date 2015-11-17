//
//  MainTableViewCell.m
//  UICollectionTags
//
//  Created by Neylor Bagagi on 11/16/15.
//  Copyright © 2015 Neylor Bagagi. All rights reserved.
//

#import "MainTableViewCell.h"
#import "MainCollectionViewCell.h"

@implementation MainTableViewCell{ 
    NSArray *tagArray;
}

- (void)awakeFromNib {
    // Initialization code
    tagArray = @[@"DOG", @"MEDIUM", @"MALE", @"LABRADOR RETRIEVER", @"TAG XXX-XXX", @"KIND"];
    
    [_tagCollectionView setDelegate:self];
    [_tagCollectionView setDataSource:self];
    [_tagCollectionView registerNib:[UINib nibWithNibName:@"MainCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"tag"];
    
    UICollectionViewLeftAlignedLayout *layout = [[UICollectionViewLeftAlignedLayout alloc] init];
    //UICollectionView *leftAlignedCollectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
    [_tagCollectionView setCollectionViewLayout:layout];
    
}
 
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return tagArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    MainCollectionViewCell *collectionCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"tag" forIndexPath:indexPath];
    [collectionCell.tagLabel setText:[tagArray objectAtIndex:indexPath.row]];
    
    return collectionCell;
}


#pragma UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{

    UILabel *label = [[UILabel alloc]init];
    [label setText:[tagArray objectAtIndex:indexPath.row]];
    [label sizeToFit];
    
    return CGSizeMake(label.frame.size.width, label.frame.size.height);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    return UIEdgeInsetsMake(0, 0, 3, 3);
}




@end
