

#import <Foundation/Foundation.h>

@interface KFXCommonConstants : NSObject


//--------------------------------------------------------
#pragma mark - GeoLocation Constants
//--------------------------------------------------------
extern double const kMetresPerDegreeLatitude;
extern double const kMetresPerDegreeLongitude;
extern double const kDegreesPerMetreLatitude;
extern double const kDegreesPerMetreLongitude;

extern double const kFeetPerMile;
extern double const kMetresPerMile;
extern double const kFeetPerKilometre;
extern double const kKilometresPerMile;
extern double const kMilesPerKilometre;

extern double const kPoundsPerKilogram;
extern double const kKilogramsPerPound;


extern double const kDegreesToRadians;
extern double const kRadiansToDegrees;


//--------------------------------------------------------
#pragma mark - Device Sizes
//--------------------------------------------------------
extern CGSize const kiPhonePlusScreenSize; // 6+, 7+
extern CGSize const kiPhoneRegularScreenSize; // 6, 6s, 7
extern CGSize const kiPhoneSmallScreenSize; // 5, 5s, 5c, SE
extern CGSize const kiPhoneOriginalScreenSize; // 4, 4s, 3, 3g
extern CGSize const kiPadMiniScreenSize; // Mini, 2, 3, 4 etc
extern CGSize const kiPadRegularScreenSize; // Air, iPad 3, 4, 9.7 inch pro
extern CGSize const kiPadPro12InchScreenSize; // 12.9 inch pro


//--------------------------------------------------------
#pragma mark - Common Keys
//--------------------------------------------------------
extern NSString *const kImagePlaceholderNameKEY;
extern NSString *const kImageNameKEY;
extern NSString *const kImageKEY;
extern NSString *const kTextPlaceholderKEY;
extern NSString *const kTextKEY;




@end
