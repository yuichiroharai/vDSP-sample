#import <Foundation/Foundation.h>
#import <Accelerate/Accelerate.h>

@interface YAVDSPSampleLog : NSObject

+ (void) nsLogLength:(vDSP_Length *) array length:(UInt32) length label:(NSString *) label;
+ (void) nsLogFloat:(float *) array length:(UInt32) length label:(NSString *) label;
+ (void) nsLogDouble:(double *) array length:(UInt32) length label:(NSString *) label;
+ (void) nsLogInt:(int *) array length:(UInt32) length label:(NSString *) label;

@end
