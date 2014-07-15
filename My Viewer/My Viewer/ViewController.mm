//
//  ViewController.m
//  My Viewer
//
//  Created by Whomever on 6/16/14.
//  Copyright (c) 2014 Sylvan. All rights reserved.
//

#import "ViewController.h"
#import "ViewCellCollectionViewCell.h"
#include "ItkImage.h"
@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    typedef itk::Image< unsigned short, 3 > ImageType;
    ImageType::Pointer image = ImageType::New();
    std::cout << "ITK Hello World !" << std::endl;
    
    
    imageViewArray = [ [NSArray alloc] initWithObjects:@"1",@"2",@"3", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [imageViewArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ViewCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ViewCell" forIndexPath:indexPath];
    NSLog(@"frame height: %f, width: %f",cell.frame.size.height, cell.frame.size.width);
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) readNIFTIFile: (NSString *) name{
    typedef <#type#> <#name#>
}

@end
