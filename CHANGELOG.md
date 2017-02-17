
# ChangeLog - KFXUtilities

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
