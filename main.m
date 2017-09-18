
#import <Foundation/Foundation.h>
#import "volumn.h"
#import "format_output.h"
#import "stl.h"

#define VERSION (3)

int main()
{
    NSLog(@"Trial begins... version %d", VERSION);

    Volumn * v;
    v = [Volumn alloc];
    [v init];

    int i = 0;
    for (; i < 10; i++) {
        [v up];
        NSLog(@"Value = %d", [v get]);
    }

    NSLog(@"reduce ...");

    for (i = 0; i < 10; i++) {
        [v down];
        NSLog(@"Value = %d", [v get]);
    }

    NSLog(@"up with step");

    Volumn * w;
    w = [Volumn alloc];
    [w initWithMin:20 max:100 step:10];

    int step = 2;
    for (i = 0; i < 10; i++) {
        step++;
        [w up_with_step:step];
        NSLog(@"Value = %d", [w get]);
    }

    NSLog(@"down with step get from .c file");

    for (i = 0; i < 12; i++) {
        [w down_with_step:get_step()];
        NSLog(@"Value = %d", [w get]);
    }

    NSLog(@"up with step get from .c file structure");

    test_struct_t sss;
    for (i = 0; i < 12; i++) {
        get_step_s(&sss);
        [w up_with_step:sss.the_step];
        NSLog(@"Value = %d", [w get]);
    }

    NSLog(@"down with step get from .cc file structure");

    A a;
    for (i = 0; i < 12; i++) {
        get_step_s(&sss);
        [w up_with_step:a.get_step()];
        NSLog(@"Value = %d", [w get]);
    }

    NSLog(@"Trial ends...");

    return (0);
}