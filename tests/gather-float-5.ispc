
export uniform int width() { return programCount; }

int zero = 0;
void *gptr;

export void f_f(uniform float RET[], uniform float aFOO[]) {
    uniform float a[programCount];
    for (uniform int i = 0; i < programCount; ++i)
        a[i] = aFOO[i];

    float *ptr = (aFOO[0] == 1234) ? (float * varying)gptr : (a + programIndex);
    int g = *ptr;
    RET[programIndex] = g; 
}

export void result(uniform float RET[]) {
    RET[programIndex] = 1 + programIndex;
}
