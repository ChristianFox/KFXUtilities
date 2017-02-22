//
//  KFXCollectionViewData.h
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import "KFXCellularViewData.h"
#import "KFXCollectionViewSectionData.h"


@interface KFXCollectionViewData : KFXCellularViewData

//@property (strong,nonatomic) NSMutableArray<KFXCollectionViewSectionData*> *sections;

+(instancetype)collectionViewData;

-(KFXCollectionViewSectionData*)sectionForTag:(NSInteger)tag;
-(KFXCollectionViewSectionData*)sectionForIdentifier:(NSString*)identifier;


@end
