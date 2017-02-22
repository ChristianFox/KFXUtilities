//
//  KFXCollectionViewData.m
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import "KFXCollectionViewData.h"

@implementation KFXCollectionViewData


@dynamic sections;

//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------

+(instancetype)collectionViewData{
	return [self cellularViewData];
}

//--------------------------------------------------------
#pragma mark - Inject Dependencies
//--------------------------------------------------------


//======================================================
#pragma mark - ** Primary Public Functionality **
//======================================================


//======================================================
#pragma mark - ** Inherited Methods **
//======================================================
-(KFXCollectionViewSectionData*)sectionForTag:(NSInteger)tag{
	return [super sectionForTag:tag];
}

-(KFXCollectionViewSectionData*)sectionForIdentifier:(NSString*)identifier{
	return [super sectionForIdentifier:identifier];
}




//======================================================
#pragma mark - ** Protocol Methods **
//======================================================




//======================================================
#pragma mark - ** Private Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Lazy Load
//--------------------------------------------------------



@end



