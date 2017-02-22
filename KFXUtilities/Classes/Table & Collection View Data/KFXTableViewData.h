//
//  KFXTableViewData.h
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import "KFXCellularViewData.h"
#import "KFXTableViewSectionData.h"


@interface KFXTableViewData : KFXCellularViewData

//@property (strong,nonatomic) NSMutableArray<KFXTableViewSectionData*> *sections;

+(instancetype)tableViewData;

-(KFXTableViewSectionData*)sectionForTag:(NSInteger)tag;
-(KFXTableViewSectionData*)sectionForIdentifier:(NSString*)identifier;



@end
