//
//  KFXTableViewData.m
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import "KFXTableViewData.h"

@implementation KFXTableViewData

@dynamic sections;

//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------

+(instancetype)tableViewData{
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
-(KFXTableViewSectionData*)sectionForTag:(NSInteger)tag{
	return [super sectionForTag:tag];

}

-(KFXTableViewSectionData*)sectionForIdentifier:(NSString*)identifier{
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











