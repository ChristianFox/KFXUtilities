


#import "KFXMaths.h"


//--------------------------------------------------------
#pragma mark - GeoLocation Constants
//--------------------------------------------------------
double const kMetresInLatitudeDegree = 0.0000090437;
double const kMetresInLongitudeDegree = 0.0000089832;
double const kLatitudeDegreesInMetre = 110574.27608210722;
double const kLongitudeDegreesInMetre = 111319.2895857656;


double const kFeetInMile = 5280.0;
double const kMetresInMile = 1609.34;
double const kFeetInKilometre = 3280.838879986877;
double const kKilometresInMile = 1.60934;
double const kMilesInKilometre = 0.621371;



@implementation KFXMaths

//-----------------------------------------------------------
#pragma mark - Random Numbers
//-----------------------------------------------------------
u_int32_t randomUnsignedIntegerWithMinAndMax(u_int32_t min, u_int32_t max){
    
    // if min is greater than max assume it is accidental and switch them
    if (min > max) {
        u_int32_t temp = min;
        min = max;
        max = temp;
    }

    u_int32_t range = max - min;
    u_int32_t rand = arc4random_uniform(range)+min;
    return rand;
}

int randomIntWithMinAndMax(int min,int max){
    if (min > max) {
        int temp = min;
        min = max;
        max = temp;
    }
    int range = max - min;
    int rand = (arc4random() % (range + 1)) + min;
    return rand;
}

float randomFloatWithMinAndMax(float min, float max){
    if (min > max) {
        float temp = min;
        min = max;
        max = temp;
    }
    
    float range = max-min;
    float randomFloat = (((float)arc4random()/0x100000000)*(range)+min);
    return randomFloat;
}


double randomDoubleWithMinAndMax(double min, double max){
    
    if (min > max) {
        double temp = min;
        min = max;
        max = temp;
    }
    
    double range = max-min;
    double rand  = (((double)arc4random()/0x100000000)*(range)+min);
    return rand;
}







@end
