

#import <XCTest/XCTest.h>
#import <KFXUtilities/KFXMaths.h>


@interface KFXMathsTests : XCTestCase

@end

@implementation KFXMathsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



//-----------------------------------------------------------
#pragma mark - Random Numbers
//-----------------------------------------------------------
-(void)testRandomIntWithLoop{
    
    for (int min = -100; min < 100; min++) {
        
        for (int max = min; max < 10000; max++) {
            
            int result = randomIntWithMinAndMax(min, max);
            
            XCTAssertTrue(result >= min && result <= max,@"Min:%d, Max:%d, Result:%d",min,max,result);
        }
    }
}


-(void)testRandomIntegerWithLoop{
    
    for (u_int32_t min = 0; min < 10; min++) {
        
        for (u_int32_t max = min; max < 2550; max++) {
            
            u_int32_t result = randomUnsignedIntegerWithMinAndMax(min, max);
            
            XCTAssertTrue(result >= min && result <= max,@"Min:%d, Max:%d, Result:%d",min,max,result);
        }
    }
}


-(void)testRandomFloatWithLoop{
    
    for (float min = -10; min < 10; min++) {
        
        for (float max = min; max < 2550; max++) {
            
            float result = randomFloatWithMinAndMax(min, max);
            
            XCTAssertTrue(result >= min && result <= max,@"Min:%.4f, Max:%.4f, Result:%.4f",min,max,result);
        }
    }
}


-(void)testRandomDoubleWithLoop{
    
    for (double min = -10; min < 10; min++) {
        
        for (double max = min; max < 2550; max++) {
            
            double result = randomDoubleWithMinAndMax(min, max);
            
            XCTAssertTrue(result >= min && result <= max,@"Min:%.4f, Max:%.4f, Result:%.4f",min,max,result);
        }
    }
}


//-----------------------------------------------------------
#pragma mark - Float equality
//-----------------------------------------------------------
-(void)testFloatEquality{
    
    float a = 1.3423;
    float b = 1.3423;
    float c = 2.1;
    float d = 3.2;
    float e = 5;
    float f = 5.000001;
    float g = 5.000000000000000001;
    
    XCTAssertTrue(fequal(a , b ));
    XCTAssertFalse(fequal(c, d ));
    XCTAssertFalse(fequal(e , f ));
    XCTAssertTrue(fequal(e , g ));
}

-(void)testFloatEqualZero{
    
    float a = 0.1;
    float b = -0.3423;
    float c = 1.0;
    float d = -1.12;

    XCTAssertFalse(fequalzero(a));
    XCTAssertFalse(fequalzero(b));
    XCTAssertFalse(fequalzero(c));
    XCTAssertFalse(fequalzero(d));
    XCTAssertFalse(fequalzero(0.00001f));
    XCTAssertTrue(fequalzero(0.0f));
    XCTAssertTrue(fequalzero(0.0000f));
}

-(void)testDoubleEquality{
    
    float a = 1.3423;
    float b = 1.3423;
    float c = 2.1;
    float d = 3.2;
    float e = 5;
    float f = 5.000001;
    float g = 5.000000000000000001;
    
    XCTAssertTrue(dequal(a , b ));
    XCTAssertFalse(dequal(c, d ));
    XCTAssertFalse(dequal(e , f ));
    XCTAssertTrue(dequal(e , g ));
}


-(void)testDoubleEqualZero{
    
    float a = 0.1;
    float b = -0.3423;
    float c = 1.0;
    float d = -1.12;
    
    XCTAssertFalse(dequalzero(a));
    XCTAssertFalse(dequalzero(b));
    XCTAssertFalse(dequalzero(c));
    XCTAssertFalse(dequalzero(d));
    XCTAssertFalse(dequalzero(0.00001));
    XCTAssertTrue(dequalzero(0.0));
    XCTAssertTrue(dequalzero(0.0000));
}

//--------------------------------------------------------
#pragma mark Test Clamp
//--------------------------------------------------------
-(void)testClampInt_WhenValueInMiddle_ShouldReturnValue{
    
    // GIVEN
    int min = 10;
    int max = 20;
    int value = 15;
    
    // WHEN
    int result = CLAMP(value, min, max);
    
    // THEN
    XCTAssertEqual(result, value);
}

-(void)testClampInt_WhenValueTooLow_ShouldReturnMin{
    
    // GIVEN
    int min = 10;
    int max = 20;
    int value = 9;
    
    // WHEN
    int result = CLAMP(value, min, max);

    // THEN
    XCTAssertEqual(result, min);
}

-(void)testClampInt_WhenValueTooHigh_ShouldReturnMax{
    
    // GIVEN
    int min = 10;
    int max = 20;
    int value = 21;
    
    // WHEN
    int result = CLAMP(value, min, max);

    // THEN
    XCTAssertEqual(result, max);
}


-(void)testClampCGFloat_WhenValueInMiddle_ShouldReturnValue{
    
    // GIVEN
    CGFloat min = 1.0;
    CGFloat max = 2.0;
    CGFloat value = 1.5;
    
    // WHEN
    CGFloat result = CLAMP(value, min, max);
    
    // THEN
    XCTAssertEqual(result, value);
}

-(void)testClampCGFloat_WhenValueTooLow_ShouldReturnMin{
    
    // GIVEN
    CGFloat min = 1.00001;
    CGFloat max = 2.0;
    CGFloat value = 1.0000000;
    
    // WHEN
    CGFloat result = CLAMP(value, min, max);
    
    // THEN
    XCTAssertEqual(result, min);
}

-(void)testClampCGFloat_WhenValueTooHigh_ShouldReturnMax{
    
    // GIVEN
    CGFloat min = 1.0;
    CGFloat max = 2.00001;
    CGFloat value = 2.000011;
    
    // WHEN
    CGFloat result = CLAMP(value, min, max);
    
    // THEN
    XCTAssertEqual(result, max);
}











@end



































