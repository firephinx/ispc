
export uniform int width() { return programCount; }


uniform int foo(int i);

export void f_f(uniform float RET[], uniform float aFOO[]) {
    for (uniform int i = 0; i < programCount; ++i)
        RET[i] = 0;

    foreach (i = 0 ... programCount) {
        if (i % 2)
            ccontinue;
        RET[i] = 1;
    }
}

export void result(uniform float RET[]) {
    RET[programIndex] = (programIndex % 2) ? 0 : 1;
}
