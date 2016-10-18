

#import "KFXGeoLocationHelper.h"

@implementation KFXGeoLocationHelper

+(instancetype)locationHelper{
    
    KFXGeoLocationHelper *helper = [[self alloc]init];
    return helper;
}

-(CLLocationSpeed)averageSpeedFromLocations:(NSArray<CLLocation*>*)locations{
    
    NSSortDescriptor *sorter = [NSSortDescriptor sortDescriptorWithKey:@"timestamp" ascending:NO];
    NSArray <CLLocation*>*sortedLocations = [locations sortedArrayUsingDescriptors:@[sorter]];
    // Determine total distance
    CLLocationDistance totalDistance = 0.0;
    for (NSInteger idx = 1; idx < locations.count; idx++) {
        
        CLLocation *locationA = sortedLocations[idx-1];
        CLLocation *locationB = sortedLocations[idx];
        totalDistance += [locationA distanceFromLocation:locationB];
    }
    // determine time of journey
    NSDate *oldest = sortedLocations.firstObject.timestamp;
    NSDate *newest = sortedLocations.lastObject.timestamp;
    NSTimeInterval time = [oldest timeIntervalSinceDate:newest];
    // calculate speed
    CLLocationSpeed speed = totalDistance / time;
    return speed;

}

-(CLLocationSpeed)averageSpeedFromLocations:(NSArray<CLLocation*>*)locations
               maxRecentLocationsToConsider:(NSUInteger)limit{
    
    if (locations.count == 0 || limit == 0) {
        return 0.0;
    }
    
    NSUInteger adjustedLimit = (limit < locations.count) ? limit : locations.count;
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(locations.count - adjustedLimit,  adjustedLimit)];
    NSArray<CLLocation*>*recentLocations = [locations objectsAtIndexes:indexSet];
    return [self averageSpeedFromLocations:recentLocations];
}

-(NSTimeInterval)timeSpentInCircularRegion:(CLCircularRegion*)region
                      fromLocationsHistory:(NSArray<CLLocation*>*)locations{
    
    NSArray *reversedLocations = [[locations reverseObjectEnumerator] allObjects];

    NSTimeInterval timeSpent = 0.0;
    NSUInteger idx = 0;
    for (CLLocation *aLocation in reversedLocations) {
        
        if ([region containsCoordinate:aLocation.coordinate]) {
            idx++;
            continue;
        }else{
            if (idx >= 1) {
                CLLocation *lastLocationInRegion = reversedLocations[idx-1];
                timeSpent = [[NSDate date] timeIntervalSinceDate:lastLocationInRegion.timestamp];
            }
            break;
        }
    }
    return timeSpent;

}

-(NSArray<CLLocation*>*)sortLocations:(NSArray<CLLocation*>*)locations
                 byDistanceToLocation:(CLLocation*)theLocation
                            ascending:(BOOL)ascending{
    
    NSArray *sorted = [locations sortedArrayUsingComparator:^NSComparisonResult(CLLocation*_Nonnull loc1, CLLocation*_Nonnull loc2) {
        
        double dist1 = [theLocation distanceFromLocation:loc1];
        double dist2 = [theLocation distanceFromLocation:loc2];
        
        if ( dist1 < dist2 ) {
            return (NSComparisonResult)NSOrderedAscending;
        } else if ( dist1 > dist2) {
            return (NSComparisonResult)NSOrderedDescending;
        } else {
            return (NSComparisonResult)NSOrderedSame;
        }
    }];

    if (!ascending) {
        sorted = [[sorted reverseObjectEnumerator]allObjects];
    }
    return sorted;
}


@end
