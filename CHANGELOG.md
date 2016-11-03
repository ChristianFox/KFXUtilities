
# ChangeLog - KFXUtilities

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