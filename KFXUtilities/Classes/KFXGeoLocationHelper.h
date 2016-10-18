

#import <Foundation/Foundation.h>
@import CoreLocation;

NS_ASSUME_NONNULL_BEGIN
@interface KFXGeoLocationHelper : NSObject

+(instancetype)locationHelper;

-(CLLocationSpeed)averageSpeedFromLocations:(NSArray<CLLocation*>*)locations;
-(CLLocationSpeed)averageSpeedFromLocations:(NSArray<CLLocation*>*)locations
               maxRecentLocationsToConsider:(NSUInteger)limit;
-(NSTimeInterval)timeSpentInCircularRegion:(CLCircularRegion*)region
                      fromLocationsHistory:(NSArray<CLLocation*>*)locations;
-(NSArray<CLLocation*>*)sortLocations:(NSArray<CLLocation*>*)locations
                 byDistanceToLocation:(CLLocation*)theLocation
                            ascending:(BOOL)ascending;

@end
NS_ASSUME_NONNULL_END
