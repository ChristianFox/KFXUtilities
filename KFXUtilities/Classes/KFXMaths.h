

//-----------------------------------------------------------
#pragma mark - Float equality
//-----------------------------------------------------------
#define fequal(a,b) (fabsf((a) - (b)) < FLT_EPSILON)
#define fequalzero(a) (fabsf(a) < FLT_EPSILON)
#define dequal(a,b) (fabs((a) - (b)) < DBL_EPSILON)
#define dequalzero(a) (fabs(a) < DBL_EPSILON)

//--------------------------------------------------------
#pragma mark - GeoLocation Constants
//--------------------------------------------------------
extern double const kMetresInLatitudeDegree;
extern double const kMetresInLongitudeDegree;
extern double const kLatitudeDegreesInMetre;
extern double const kLongitudeDegreesInMetre;

extern double const kFeetInMile;
extern double const kMetresInMile;
extern double const kFeetInKilometre;
extern double const kKilometresInMile;
extern double const kMilesInKilometre;

#import <Foundation/Foundation.h>

@interface KFXMaths : NSObject

//-----------------------------------------------------------
#pragma mark - Random Numbers
//-----------------------------------------------------------

/**
 *  Generates a random 32bit unsigned integer between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
u_int32_t randomUnsignedIntegerWithMinAndMax(u_int32_t min, u_int32_t max);

/**
 *  Generates a random integer between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
int randomIntWithMinAndMax(int min,int max);

/**
 *  Generates a random float between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
float randomFloatWithMinAndMax(float min, float max);

/**
 *  Generates a random double between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
double randomDoubleWithMinAndMax(double min, double max);


@end
