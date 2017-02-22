


#import "KFXSectionData.h"
#import "KFXCellData.h"

@interface KFXSectionData ()


@end

@implementation KFXSectionData


//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------
- (instancetype)init
{
	self = [super init];
	if (self) {
		self.cells = [NSMutableArray arrayWithCapacity:5];

	}
	return self;
}

+(instancetype)sectionData{
	return [[self alloc]init];
}



//--------------------------------------------------------
#pragma mark - Inject Dependencies
//--------------------------------------------------------


//======================================================
#pragma mark - ** Primary Public Functionality **
//======================================================
-(void)addCellData:(KFXCellData *)cellData{
	[self.cells addObject:cellData];
}

-(void)addCellDataFromArray:(NSArray<KFXCellData *> *)cellData{
	[self.cells addObjectsFromArray:cellData];
}

-(void)insertCellData:(KFXCellData *)cellData atIndex:(NSInteger)index{
	
	[self.cells insertObject:cellData atIndex:index];
}

-(KFXCellData *)cellForTag:(NSInteger)tag{
	
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"tag = %ld",(long)tag];
	NSArray *matching = [self.cells filteredArrayUsingPredicate:pred];
	return matching.firstObject;
}

-(KFXCellData *)cellForIdentifier:(NSString *)identifier{
	
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"identifier = %@",identifier];
	NSArray *matching = [self.cells filteredArrayUsingPredicate:pred];
	return matching.firstObject;
}

-(NSInteger)count{
	return self.cells.count;
}

//======================================================
#pragma mark - ** Inherited Methods **
//======================================================




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










































