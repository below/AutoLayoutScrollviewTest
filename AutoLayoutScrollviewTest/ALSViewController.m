//
//  ALSViewController.m
//  AutoLayoutScrollviewTest
//
//  Created by Alexander v. Below on 06.01.13.
//  Copyright (c) 2013 Alexander v. Below. All rights reserved.
//
// This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 Unported License.
// http://creativecommons.org/licenses/by-sa/3.0/
//

#import "ALSViewController.h"
#import "ALSCollectionViewCell.h"

// Pictures used are:

// http://www.flickr.com/photos/eren/3963425300/
// By Erin Emre Kasal

// http://www.flickr.com/photos/ioerror/104101285/
// By Jacob Appelbaum

@interface ALSViewController ()
@property (strong) NSArray *imageURLArray;
@end

@implementation ALSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.imageURLArray = [[NSBundle mainBundle] URLsForResourcesWithExtension:@"jpg" subdirectory:nil];
    
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imageURLArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ALSCollectionViewCell *newCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ImageCell" forIndexPath:indexPath];

    NSAssert(indexPath.row <= self.imageURLArray.count, @"indexPath is beyond bounds");

    NSURL *imageURL = self.imageURLArray[indexPath.row];    // Using that funky new syntax …
    UIImage *image = [UIImage imageNamed:imageURL.lastPathComponent];
    newCell.imageView.image = image;
    return newCell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
