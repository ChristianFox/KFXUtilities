//
//  KFXCellularViewData.h
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import <Foundation/Foundation.h>
#import "KFXSectionData.h"
#import "KFXCellData.h"

@interface KFXCellularViewData : NSObject

@property (strong,nonatomic) NSMutableArray<__kindof KFXSectionData*> *sections;
@property (copy,nonatomic) NSString *identifier;
@property (nonatomic) NSInteger tag;
@property (copy,nonatomic) NSString *title;

+(instancetype)cellularViewData;
-(void)addSection:(KFXSectionData*)section;
-(void)addSectionsFromArray:(NSArray<KFXSectionData*>*)sections;
-(void)insertSection:(KFXSectionData*)section atIndex:(NSInteger)index;
-(void)addCell:(KFXCellData*)cell toSectionAtIndex:(NSInteger)sectionIndex;
-(void)insertCell:(KFXCellData*)cell atIndexPath:(NSIndexPath*)indexPath;
-(void)deleteCellAtIndexPath:(NSIndexPath*)indexPath;

-(__kindof KFXSectionData*)sectionForTag:(NSInteger)tag;
-(__kindof KFXSectionData*)sectionForIdentifier:(NSString*)identifier;
-(KFXCellData*)cellForTag:(NSInteger)tag;
-(KFXCellData*)cellForIdentifier:(NSString*)identifier;
-(KFXCellData*)cellForIndexPath:(NSIndexPath*)indexPath;

-(NSInteger)count;

@end
