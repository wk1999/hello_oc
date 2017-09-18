
#import "volumn.h"


@implementation Volumn

-(void)adjust {
    if (_vol < _min) {
        _vol = _min;
    } else if (_vol > _max) {
        _vol = _max;
    }    
}

//public:

-(void)init {
    [super init];
    _vol = 0;
    _min = 0;
    _max = 5;
}

-(void)initWithMin: (int)min_val max:(int)max_val step:(int)step_val
{
    [super init];
    _min = min_val;
    _max = max_val;
    _vol = _min;
}

-(int)get {
    return (_vol);
}


-(id)up {
    _vol++;
    [self adjust];
    return self;
}


-(id)down {
    _vol--;
    [self adjust];
    return self;
}

-(id)up_with_step: (int)step {
    _vol += step;
    [self adjust];
    return self;
}


-(id)down_with_step: (int)step {
    _vol -= step;
   [self adjust];
    return self;
}

@end