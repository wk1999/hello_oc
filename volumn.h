
#import <Foundation/Foundation.h>

@interface Volumn : NSObject {
    int _vol;
    int _min;
    int _max;
}

-(void)adjust; //better to be private
-(void)init;
-(void)initWithMin: (int)min_val max:(int)max_val step:(int)step_val;
-(int)get;
-(id)up;
-(id)down;
-(id)up_with_step: (int)step;
-(id)down_with_step: (int)step;

@end