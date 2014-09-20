//
//  ViewController.m
//  PhotoLibraryHelper
//
//  Created by kaiinui on 2014/09/21.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "ViewController.h"

#import "KIPhotoLibraryHelper.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak typeof(self) weakSelf = self;
    [KIPhotoLibraryHelper latestAssetImageDataWithCompletionHandler:^(NSData *imageData) {
        NSLog(@"WHOA %@", imageData);
        
        UIImage *image = [UIImage imageWithData:imageData];
        weakSelf.imageView.image = image;
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
