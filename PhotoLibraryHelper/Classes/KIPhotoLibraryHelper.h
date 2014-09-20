//
//  KIPhotoLibraryHelper.h
//  PhotoLibraryHelper
//
//  Created by kaiinui on 2014/09/21.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Photos/Photos.h>

@interface KIPhotoLibraryHelper : NSObject

+ (PHAsset *)latestAsset;
+ (PHImageRequestID)latestAssetImageDataWithCompletionHandler:(void(^)(NSData *imageData))completion;

@end
