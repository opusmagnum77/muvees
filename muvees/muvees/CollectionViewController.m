//
//  CollectionViewController.m
//  muvees
//
//  Created by Daniel Adeyanju on 5/3/16.
//  Copyright © 2016 Daniel Adeyanju. All rights reserved.
//

#import "CollectionViewController.h"
@interface CollectionViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@end

@implementation CollectionViewController



-(void)viewDidLoad{
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    searchBar.delegate = self;
    self.navigationItem.titleView = searchBar;
    
    
    
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return 32;
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cv" forIndexPath:indexPath];
    
    return cell;
}



@end
