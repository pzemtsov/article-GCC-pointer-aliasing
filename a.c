/** This file contains all C code snippets from the article "GCC, optimisations and pointer aliasing",
    which can be found at http://pzemtsov.github.io/2014/05/09/gcc-optimisations-and-pointer-aliasing.html.
    The functions are listed in the order of their appearance in the article. They can all be compiled
    together, using the following command line:

    gcc -O3 -S -o a.s a.c

    after which file a.s will contain the produced assembly code.

    File a-nostrict.s was produced by following command line:

    gcc -O3 -fno-strict-aliasing -S -o a-nostrict.s a.c 
 */

void a (int ** p)
{
    p[0][0] = 0;
    p[0][1] = 1;
}

void b (char ** p)
{
    p[0][0] = 0;
    p[0][1] = 1;
}

void c (int * p, int * q)
{
    *p = *q + 1;
    *p = *q + 1;
}

void d (int * p, int * q)
{
    int i = 0;
    for (i = 0; i < 1000; i++)
        *p = *q * 10 * i;
}

void c_1 (int * p, int * __restrict__ q)
{
    *p = *q + 1;
    *p = *q + 1;
}

void c_2 (int * __restrict__ p, int * q)
{
    *p = *q + 1;
    *p = *q + 1;
}

void c_3 (int * __restrict__ p, int * __restrict__ q)
{
    *p = *q + 1;
    *p = *q + 1;
}

void d_1 (int * __restrict__ p, int * __restrict__ q)
{
    int i = 0;
    for (i = 0; i < 1000; i++)
        *p = *q * 10 * i;
}

void d_2 (int * p, int * q)
{
    int i = 0;
    for (i = 0; i < 1000; i++)
        *p += *q * 10 * i;
}

void d_3 (int * __restrict__ p, int * __restrict__ q)
{
    int i = 0;
    for (i = 0; i < 1000; i++)
        *p += *q * 10 * i;
}

void c_short (int * p, short * q)
{
    *p = *q + 1;
    *p = *q + 1;
}

void c_char (int * p, char * q)
{
    *p = *q + 1;
    *p = *q + 1;
}

int e (int * p)
{
    int a = *p;
    *(short*) p = 0;
    return *p - a;
}

int e_char (int * p)
{
    int a = *p;
    *(char*) p = 0;
    return *p - a;
}

void b_1 (char ** __restrict__ p)
{
    p[0][0] = 0;
    p[0][1] = 1;
}

void b_2 (char * __restrict__ * __restrict__ p)
{
    p[0][0] = 0;
    p[0][1] = 1;
}

void c_const (int * p, const int * q)
{
    *p = *q + 1;
    *p = *q + 1;
}

void a_modified (int ** p)
{
    int * p0 = p[0];
    p0[0] = 0;
    p0[1] = 1;
}

void b_modified (char ** p)
{
    char * p0 = p[0];
    p0[0] = 0;
    p0[1] = 1;
}

int array [1000];

void c_array (int p, int q)
{
    array [p] = array [q] + 1;
    array [p] = array [q] + 1;
}
