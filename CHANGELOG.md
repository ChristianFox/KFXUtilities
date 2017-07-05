
# ChangeLog - KFXUtilities

## 1.0.0
- Removes KFXPhotoPickerManager, KFXLocationTracker and KFXGeoLocationHelper

## 0.15.1
- Updates Licence file

## 0.15.0
- Updates Licence file

## 0.14.0
- Adds +descriptionForRejectionReason: to KFXLocationTracker
- Adds 4 UIKit size constants (nav bar x2, status bar, tab bar)

## 0.13.0
- Adds NSDate result block to KFXCommonDefinitions
- Imports CoreGraphics module into KFXCommonConstants

## 0.12.0
- KFXLocationTracker: Adds conditional to -(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status so that if status is not determined it does nothing (no delegate method call or block callback)
- KFXGeoLocationHelper: Adds sortObjects:withLocationKey:byDistanceToLocation:ascending:distances:

## v0.11.1
- Adds @class UIImage; to KFXCommonDefintions to silence 'unknown class' warning

## v0.11.0
- Adds Device size constants
- Adds common keys constants
- Updates KFXCellularViewData classes so cells have a weak reference to their section and sections have a weak reference to their table/collection. Also so cells can determine their indexPath
- Adds booeleanResultBlocks to KFXCommonDefintions

## 0.10.0
- Updates KFXLocationTracker to make sure -requestLocationTrackingAuthorisationWithBlock: completes when status is already authorised
- Adds -sortObjects:byLocationKey:... method to KFXGeoLocationHelper

## 0.9.0
- Adds KFXLocationTracker
- Updates KFXCellularViewData classes

## 0.8.0
- Adds KFXCellularViewData, KFXCollectionViewData, KFXTableViewData, KFXSectionData, KFXCellData etc

## 0.7.0
- Adds KFXPhotoPickerManager

## 0.6.0
- Adds -distanceBetweenCoordinates method to KFXGeoLocationHelper

## 0.5.1
- No changes just re-adding to repo as new version becuase new classes are not available when pod added to a project

## 0.5.0
- Adds methods to KFXGeoLocationHelper to create one CLLocationCoordinate2d from another and adjust the lat & long of the new one in either degrees or metres
- Creates KFXCommonConstants and moves constants from KFXMaths to there

## 0.4.1
- Fixes error with constants in KFXMaths

## 0.4.0
### KFXGeoLocationHelper
- Adds many methods: -totalDistance..., -speedBetweenLocations..., -sortLocationChronologically etc
- Replaces two -averageSpeed methods with totally new methods, does not depreciate old methods, just deletes them.
- fixes -timeSpentInCircularRegion
- Adds many unit tests for these methods

### KFXMaths
- Adds some constants for conversion between metres, feet, miles, degrees etc - there is an argument for having them in GeoLocationHelper or even common definitions or contants files but at the moment it makes sense to be to build a collection of math based constants in this file, they may be moved in the future.

### KFXCommonDefinitions
- Created
- Add multiple common block definitions: KFXSuccessResultBlock, KFXNSArrayResultBlock etc
