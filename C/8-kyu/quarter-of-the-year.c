#include <math.h>

int quarter_of(int month) {
    return (int)ceil((float)month/3);
}

// === EXPLANATION ===
// month/3  : since each qtr is 3 mo long
// (float)  : Changes 'month' to float, so that Ceil() can work properly.
// ceil()   : Uses the Ceiling function of math.h
// (int)    : Changes final form to INT