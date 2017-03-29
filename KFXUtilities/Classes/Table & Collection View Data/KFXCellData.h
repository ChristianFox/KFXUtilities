//
//  KFXCellData.h
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import <Foundation/Foundation.h>
@class KFXSectionData;

@interface KFXCellData : NSObject

@property (copy,nonatomic) NSString *title;
@property (copy,nonatomic) NSString *identifier;
@property (copy,nonatomic) NSString *reuseIdentifier;
@property (nonatomic) NSInteger tag;
@property (strong,nonatomic) id contents;
@property (weak,nonatomic) KFXSectionData *sectionData;

+(instancetype)cellData;
+(instancetype)cellDataWithContents:(id)contents;

-(NSIndexPath*)indexPath;

@end
