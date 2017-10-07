


#import <XCTest/XCTest.h>
// SUT
#import <KFXUtilities/KFXGeometry.h>

@interface  KFXGeometryTests : XCTestCase

@end

@implementation KFXGeometryTests


//======================================================
#pragma mark - ** Setup, Tear down **
//======================================================
- (void)setUp {
    [super setUp];
    
}

- (void)tearDown {
    
    [super tearDown];
}

//======================================================
#pragma mark - ** Initilisation Tests **
//======================================================

//======================================================
#pragma mark - ** Primary Function Tests **
//======================================================
//--------------------------------------------------------
#pragma mark Test CGRect
//--------------------------------------------------------
-(void)testCGRectWithNewOrigin{
    
    // GIVEN
    CGRect original = CGRectMake(0, 0, 10, 10);
    CGPoint origin = CGPointMake(10, 10);
    CGRect expected = CGRectMake(10, 10, 10, 10);
    
    // WHEN
    CGRect result = kfx_CGRectWithNewOrigin(original, origin);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectWithNewSize{
    
    // GIVEN
    CGRect original = CGRectMake(10, 10, 0, 0);
    CGSize size = CGSizeMake(10,10);
    CGRect expected = CGRectMake(10, 10, 10, 10);
    
    // WHEN
    CGRect result = kfx_CGRectWithNewSize(original, size);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectWithNewOriginX{
    
    // GIVEN
    CGRect original = CGRectMake(0, 0, 10, 10);
    CGFloat originX = 10;
    CGRect expected = CGRectMake(10, 0, 10, 10);
    
    // WHEN
    CGRect result = kfx_CGRectWithNewOriginX(original, originX);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectWithNewOriginY{
    
    // GIVEN
    CGRect original = CGRectMake(0, 0, 10, 10);
    CGFloat originY = 10;
    CGRect expected = CGRectMake(0, 10, 10, 10);
    
    // WHEN
    CGRect result = kfx_CGRectWithNewOriginY(original, originY);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectWithNewWidth{
    
    // GIVEN
    CGRect original = CGRectMake(10, 10, 10, 10);
    CGFloat width = 20;
    CGRect expected = CGRectMake(10, 10, 20, 10);
    
    // WHEN
    CGRect result = kfx_CGRectWithNewWidth(original, width);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectWithNewHeight{
    
    // GIVEN
    CGRect original = CGRectMake(10, 10, 10, 10);
    CGFloat height = 20;
    CGRect expected = CGRectMake(10, 10, 10, 20);
    
    // WHEN
    CGRect result = kfx_CGRectWithNewHeight(original, height);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectGetCentre{
    
    // GIVEN
    CGRect original = CGRectMake(10, 10, 10, 10);
    CGPoint expected = CGPointMake(15.0, 15.0);
    
    // WHEN
    CGPoint result = kfx_CGRectGetCentre(original);
    
    // THEN
    XCTAssertTrue(CGPointEqualToPoint(result, expected));
}

-(void)testCGRectMakeWithCentreAndSize{
    
    // GIVEN
    CGPoint centre = CGPointMake(50, 50);
    CGSize size = CGSizeMake(100, 100);
    CGRect expected = CGRectMake(0, 0, 100, 100);
    
    // WHEN
    CGRect result = kfx_CGRectMakeWithCentreAndSize(centre, size);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectFloor{
    
    // GIVEN
    CGRect original = CGRectMake(10.5, 10.6, 10.3, 10.4);
    CGRect expected = CGRectMake(10, 10, 10, 10);
    
    // WHEN
    CGRect result = kfx_CGRectFloor(original);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectCeiling{
    
    // GIVEN
    CGRect original = CGRectMake(10.5, 10.6, 10.3, 10.4);
    CGRect expected = CGRectMake(11, 11, 11, 11);
    
    // WHEN
    CGRect result = kfx_CGRectCeiling(original);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}

-(void)testCGRectRounded{
    
    // GIVEN
    CGRect original = CGRectMake(10.5, 10.6, 10.3, 10.4);
    CGRect expected = CGRectMake(11, 11, 10, 10);
    
    // WHEN
    CGRect result = kfx_CGRectRounded(original);
    
    // THEN
    XCTAssertTrue(CGRectEqualToRect(result, expected));
}


//--------------------------------------------------------
#pragma mark Test CGPoint
//--------------------------------------------------------
-(void)testCGPointRounded{
    
    // GIVEN
    CGPoint original = CGPointMake(10.1, 10.6);
    CGPoint expected = CGPointMake(10, 11);
    
    // WHEN
    CGPoint result = kfx_CGPointRounded(original);
    
    // THEN
    XCTAssertTrue(CGPointEqualToPoint(result, expected));
}

-(void)testCGPointAdd{
    
    // GIVEN
    CGPoint a = CGPointMake(20.0, 10.0);
    CGPoint b = CGPointMake(10.0, 20.0);
    CGPoint expected = CGPointMake(30, 30);
    
    // WHEN
    CGPoint result = kfx_CGPointAdd(a, b);
    
    // THEN
    XCTAssertTrue(CGPointEqualToPoint(result, expected));
}

-(void)testCGPointSubtracted{
    
    // GIVEN
    CGPoint a = CGPointMake(20.0, 20.0);
    CGPoint b = CGPointMake(5.0, 10.0);
    CGPoint expected = CGPointMake(15, 10);
    
    // WHEN
    CGPoint result = kfx_CGPointSubtract(a, b);
    
    // THEN
    XCTAssertTrue(CGPointEqualToPoint(result, expected));
}

-(void)testCGPointMultiply{
    
    // GIVEN
    CGPoint a = CGPointMake(10.0, 20.0);
    CGFloat f = 10.0;
    CGPoint expected = CGPointMake(100.0, 200.0);
    
    // WHEN
    CGPoint result = kfx_CGPointMultiply(a, f);
    
    // THEN
    XCTAssertTrue(CGPointEqualToPoint(result, expected));
}


//--------------------------------------------------------
#pragma mark Test CGSize
//--------------------------------------------------------
-(void)testCGSizeRounded{
    
    // GIVEN
    CGSize original = CGSizeMake(10.4,10.6);
    CGSize expected = CGSizeMake(10.0,11.0);
    
    // WHEN
    CGSize result = kfx_CGSizeRounded(original);
    
    // THEN
    XCTAssertTrue(CGSizeEqualToSize(result, expected));
}

//--------------------------------------------------------
#pragma mark Test Distance
//--------------------------------------------------------
-(void)testDistanceBetweenCGPoints{
    
    // GIVEN
    CGPoint pA = CGPointMake(0, 0);
    CGPoint pB = CGPointMake(0, 10);
    CGPoint pC = CGPointMake(10, 0);
    CGPoint pD = CGPointMake(10, 10);
    
    // WHEN
    CGFloat dist1 = kfx_distanceBetweenCGPoints(pA, pB);
    CGFloat dist2 = kfx_distanceBetweenCGPoints(pA, pC);
    CGFloat dist3 = kfx_distanceBetweenCGPoints(pA, pD);
    
    // THEN
    XCTAssertTrue(10 == dist1);
    XCTAssertTrue(10 == dist2);
    XCTAssertTrue(dist3 > 14.14 && dist3 < 14.15);
}

//--------------------------------------------------------
#pragma mark Test Aspect Ratio
//--------------------------------------------------------
-(void)testCGSizeAspectScaleToSize{
    
    // GIVEN
    CGSize original = CGSizeMake(10, 10);
    CGSize toSize = CGSizeMake(30, 100);
    CGSize expected = CGSizeMake(30, 30);
    
    // WHEN
    CGSize result = kfx_CGSizeAspectScaleToSize(original, toSize);
    
    // THEN
    XCTAssertTrue(CGSizeEqualToSize(result, expected));
}

-(void)testCGSizeScaledWithAspectFitFromSize{
    
    CGSize original = CGSizeMake(10, 10);
    CGSize toSize = CGSizeMake(30, 100);
    CGSize expected = CGSizeMake(30, 30);
    
    // WHEN
    CGSize result = kfx_CGSizeScaledWithAspectFitFromSize(original, toSize);
    
    // THEN
    XCTAssertTrue(CGSizeEqualToSize(result, expected));
}

-(void)testCGSizeScaledWithAspectFillFromSize{
    
    CGSize original = CGSizeMake(10, 10);
    CGSize toSize = CGSizeMake(30, 100);
    CGSize expected = CGSizeMake(100, 100);
    
    // WHEN
    CGSize result = kfx_CGSizeScaledWithAspectFillFromSize(original, toSize);
    
    // THEN
    XCTAssertTrue(CGSizeEqualToSize(result, expected));
}








@end











































