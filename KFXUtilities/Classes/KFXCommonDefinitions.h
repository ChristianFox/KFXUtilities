/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/

#ifndef KFXCommonDefinitions_h
#define KFXCommonDefinitions_h
@import CoreGraphics;
@class UIImage;

//-----------------------------------
// Directions
//-----------------------------------
typedef NS_ENUM (NSInteger, KFXCardinalDirection){
    KFXCardinalDirectionUndefined = 0,
    KFXCardinalDirectionNorth,
    KFXCardinalDirectionEast,
    KFXCardinalDirectionSouth,
    KFXCardinalDirectionWest
};

typedef NS_ENUM (NSInteger, KFXDirection) {
    KFXDirectionUndefined = 0,
    KFXDirectionUp,
    KFXDirectionRight,
    KFXDirectionDown,
    KFXDirectionLeft
};



typedef void(^KFXCompletionBlock)();

//-----------------------------------
// Happenings
//-----------------------------------
typedef void(^KFXUpdateOccurredBlock)(BOOL updateOccurred);
typedef void(^KFXUpdateOccurredResultBlock)(BOOL updateOccured, NSError *_Nullable error);
typedef void(^KFXSuccessResultBlock)(BOOL success, NSError *_Nullable error);
typedef void(^KFXProgressBlock)(CGFloat progress);
typedef void(^KFXProgressAndMessageBlock)(CGFloat progress, NSString *_Nullable message);

//-----------------------------------
// Generic Primitives
//-----------------------------------
typedef void(^KFXBooleanResultBlock)(BOOL boolValue);
typedef void(^KFXBooleanAndErrorResultBlock)(BOOL boolValue, NSError *_Nullable error);
typedef void(^KFXNSIntegerResultBlock)(NSInteger integer, NSError *_Nullable error);
typedef void(^KFXNSUnsignedIntegerResultBlock)(NSUInteger uInteger, NSError *_Nullable error);

//-----------------------------------
// Objects
//-----------------------------------
typedef void(^KFXAnonymousObjectResultBlock)(id _Nullable object, NSError *_Nullable error);
typedef void(^KFXNSArrayResultBlock)(NSArray *_Nullable array, NSError *_Nullable error);
typedef void(^KFXNSDictionaryResultBlock)(NSDictionary *_Nullable dictionary, NSError *_Nullable error);
typedef void(^KFXNSSetResultBlock)(NSSet *_Nullable set, NSError *_Nullable error);
typedef void(^KFXNSDataResultBlock)(NSData *_Nullable data, NSError *_Nullable error);
typedef void(^KFXNSDateResultBlock)(NSDate *_Nullable date, NSError *_Nullable error);
typedef void(^KFXNSStringResultBlock)(NSString *_Nullable string, NSError *_Nullable error);
typedef void(^KFXNSNumberResultBlock)(NSNumber *_Nullable number, NSError *_Nullable error);
typedef void(^KFXNSURLResultBlock)(NSURL *_Nullable url, NSError *_Nullable error);
typedef void(^KFXUIImageResultBlock)(UIImage *_Nullable image, NSError*_Nullable error);



#endif /* KFXCommonDefinitions_h */
