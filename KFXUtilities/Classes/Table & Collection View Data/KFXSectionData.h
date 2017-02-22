

#import <Foundation/Foundation.h>
@class KFXCellData;

@interface KFXSectionData : NSObject

@property (strong,nonatomic) NSMutableArray<KFXCellData*> *cells;
@property (copy,nonatomic) NSString *titleForHeader;
@property (copy,nonatomic) NSString *titleForFooter;
@property (copy,nonatomic) NSString *identifier;
@property (nonatomic) NSInteger tag;


+(instancetype)sectionData;

-(void)addCellData:(KFXCellData*)cellData;
-(void)addCellDataFromArray:(NSArray<KFXCellData*>*)cellData;
-(void)insertCellData:(KFXCellData*)cellData atIndex:(NSInteger)index;

-(KFXCellData*)cellForTag:(NSInteger)tag;
-(KFXCellData*)cellForIdentifier:(NSString*)identifier;

-(NSInteger)count;

@end
