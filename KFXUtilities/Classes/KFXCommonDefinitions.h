

#ifndef KFXCommonDefinitions_h
#define KFXCommonDefinitions_h

typedef void(^KFXCompletionBlock)();
typedef void(^KFXSuccessResultBlock)(BOOL success, NSError *_Nullable error);
typedef void(^KFXAnonymousObjectResultBlock)(id _Nullable object, NSError *_Nullable error);
typedef void(^KFXNSArrayResultBlock)(NSArray *_Nullable array, NSError *_Nullable error);
typedef void(^KFXNSDictionaryResultBlock)(NSDictionary *_Nullable dictionary, NSError *_Nullable error);
typedef void(^KFXNSSetResultBlock)(NSSet *_Nullable set, NSError *_Nullable error);
typedef void(^KFXNSDataResultBlock)(NSData *_Nullable data, NSError *_Nullable error);
typedef void(^KFXNSStringResultBlock)(NSString *_Nullable string, NSError *_Nullable error);
typedef void(^KFXNSNumberResultBlock)(NSNumber *_Nullable number, NSError *_Nullable error);
typedef void(^KFXNSIntegerResultBlock)(NSInteger integer, NSError *_Nullable error);
typedef void(^KFXNSUnsignedIntegerResultBlock)(NSUnsignedInteger uInteger, NSError *_Nullable error);



#endif /* KFXCommonDefinitions_h */
