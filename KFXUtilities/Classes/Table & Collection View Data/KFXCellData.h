//
//  KFXCellData.h
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import <Foundation/Foundation.h>

@interface KFXCellData : NSObject

@property (copy,nonatomic) NSString *title;
@property (copy,nonatomic) NSString *identifier;
@property (copy,nonatomic) NSString *reuseIdentifier;
@property (nonatomic) NSInteger tag;
@property (strong,nonatomic) id contents;

+(instancetype)cellData;
+(instancetype)cellDataWithContents:(id)contents;

@end
