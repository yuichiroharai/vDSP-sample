#import "YAVDSPSampleLog.h"

@implementation YAVDSPSampleLog

+ (void) nsLogLength:(vDSP_Length *) array length:(UInt32) length label:(NSString *) label
{
    NSMutableString * string = [[NSMutableString alloc] initWithString:label];
    
    for (UInt16 i = 0; i<length; i++) {
        [string appendFormat:@"[%u]%lu, ", i, array[i]];
    }
    [string deleteCharactersInRange:NSMakeRange(string.length-2, 2)];
    
    NSLog(@"%@", string);
}
+ (void) nsLogFloat:(float *) array length:(UInt32) length label:(NSString *) label
{
    NSMutableString * string = [[NSMutableString alloc] initWithString:label];
    
    for (UInt16 i = 0; i<length; i++) {
        [string appendFormat:@"[%u]%f, ", i, array[i]];
    }
    [string deleteCharactersInRange:NSMakeRange(string.length-2, 2)];
    
    NSLog(@"%@", string);
}
+ (void) nsLogDouble:(double *) array length:(UInt32) length label:(NSString *) label
{
    NSMutableString * string = [[NSMutableString alloc] initWithString:label];
    
    for (UInt16 i = 0; i<length; i++) {
        [string appendFormat:@"[%u]%f, ", i, array[i]];
    }
    [string deleteCharactersInRange:NSMakeRange(string.length-2, 2)];
    
    NSLog(@"%@", string);
}
+ (void) nsLogInt:(int *) array length:(UInt32) length label:(NSString *) label
{
    NSMutableString * string = [[NSMutableString alloc] initWithString:label];
    
    for (UInt16 i = 0; i<length; i++) {
        [string appendFormat:@"[%u]%d, ", i, array[i]];
    }
    [string deleteCharactersInRange:NSMakeRange(string.length-2, 2)];
    
    NSLog(@"%@", string);
}

@end




