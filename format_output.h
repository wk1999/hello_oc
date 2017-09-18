

#ifndef _FMT_H_
#define _FMT_H_


typedef struct test_struct_s {
    int a;
    int the_step;
} test_struct_t;

int get_step(void);

void get_step_s(test_struct_t * st);

#endif
