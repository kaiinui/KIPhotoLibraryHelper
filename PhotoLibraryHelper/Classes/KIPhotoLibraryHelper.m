//
//  KIPhotoLibraryHelper.m
//  PhotoLibraryHelper
//
//  Created by kaiinui on 2014/09/21.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KIPhotoLibraryHelper.h"

@implementation KIPhotoLibraryHelper

+ (PHAsset *)latestAsset {
    PHAssetCollection *collection = [[PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum subtype:PHAssetCollectionSubtypeSmartAlbumRecentlyAdded options:nil] firstObject];
    PHFetchOptions *options = [self fetchOptionWithCreationDateDescending];
    return [[PHAsset fetchAssetsInAssetCollection:collection options:options] firstObject];
}

+ (PHImageRequestID)latestAssetImageDataWithCompletionHandler:(void(^)(NSData *image))completion {
    return [[PHImageManager defaultManager] requestImageDataForAsset:[self latestAsset] options:nil resultHandler:^(NSData *imageData, NSString *dataUTI, UIImageOrientation orientation, NSDictionary *info) {
        completion(imageData);
    }];
}

# pragma mark - Helpers

+ (PHFetchOptions *)fetchOptionWithCreationDateDescending {
    PHFetchOptions *options = [[PHFetchOptions alloc] init];
    options.sortDescriptors = @[
                                [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO],
                                ];
    return options;
}

@end
