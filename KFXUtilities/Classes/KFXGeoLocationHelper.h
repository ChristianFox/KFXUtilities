

#import <Foundation/Foundation.h>
@import CoreLocation;

NS_ASSUME_NONNULL_BEGIN
@interface KFXGeoLocationHelper : NSObject

//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------
-(instancetype)init;
+(instancetype)geoLocationHelper;


//--------------------------------------------------------
#pragma mark - Data from an NSArray of CLLocations
//--------------------------------------------------------
#pragma mark Distance
-(CLLocationDistance)totalDistanceFromLocations:(NSArray<CLLocation*>*)locations;
-(CLLocationDistance)shortestDistanceBetweenTwoLocationsFromLocations:(NSArray<CLLocation*>*)locations;
-(CLLocationDistance)longestDistanceBetweenTwoLocationsFromLocations:(NSArray<CLLocation*>*)locations;

#pragma mark Average Speed
-(CLLocationSpeed)averageSpeedReadFromLocations:(NSArray<CLLocation*>*)locations;
-(CLLocationSpeed)averageSpeedCalculatedFromLocations:(NSArray<CLLocation*>*)locations;

#pragma mark Speed Between Locations
-(CLLocationSpeed)speedBetweenLocation:(CLLocation*)locationA andLocation:(CLLocation*)locationB;
-(NSArray<NSNumber*>*)speedsBetweenLocations:(NSArray<CLLocation*>*)locations;
-(CLLocationSpeed)slowestSpeedBetweenTwoLocationsFromLocations:(NSArray<CLLocation*>*)locations;
-(CLLocationSpeed)fastestSpeedBetweenTwoLocationsFromLocations:(NSArray<CLLocation*>*)locations;

#pragma mark Regions
-(NSTimeInterval)timeSpentInCircularRegion:(CLCircularRegion*)region
                             withLocations:(NSArray<CLLocation*>*)locations;

//--------------------------------------------------------
#pragma mark - Sorting Arrays of Locations
//--------------------------------------------------------
-(NSArray<CLLocation*>*)sortLocationsChronologically:(NSArray<CLLocation*>*)locations
                                           ascending:(BOOL)ascending;

-(NSArray<CLLocation*>*)sortLocations:(NSArray<CLLocation*>*)locations
                 byDistanceToLocation:(CLLocation*)theLocation
                            ascending:(BOOL)ascending;

@end
NS_ASSUME_NONNULL_END
