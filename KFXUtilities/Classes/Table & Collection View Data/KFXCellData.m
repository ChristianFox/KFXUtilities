//
//  KFXCellData.m
//  Pods
//
//  Created by Eyeye on 19/02/2017.
//
//

#import "KFXCellData.h"
#import "KFXSectionData.h"

@implementation KFXCellData


//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------
+(instancetype)cellData{
	return [[self alloc]init];
}

+(instancetype)cellDataWithContents:(id)contents{
	KFXCellData *cellData = [self cellData];
	cellData.contents = contents;
	return cellData;
}

//--------------------------------------------------------
#pragma mark - Inject Dependencies
//--------------------------------------------------------


//======================================================
#pragma mark - ** Primary Public Functionality **
//======================================================
-(NSIndexPath *)indexPath{
	
	NSInteger rowItem = [self.sectionData.cells indexOfObject:self];
	NSInteger section = [self.sectionData sectionIndex];
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:rowItem inSection:section];
	return indexPath;
}

//======================================================
#pragma mark - ** Inherited Methods **
//======================================================
-(NSString *)description{
	return [NSString stringWithFormat:@"CellData: Title: %@; Identifier: %@; ReuseIdentifier: %@; Tag: %ld",self.title,self.identifier,self.reuseIdentifier,(long)self.tag];
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



















