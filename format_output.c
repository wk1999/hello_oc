

#include "format_output.h"

static int step = 2;

int get_step(void)
{
    step++;
    return (step);
}

void get_step_s(test_struct_t * st)
{
    st->a = 100;
    st->the_step = get_step();
    return;
}