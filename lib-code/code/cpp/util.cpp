#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long int ut_hexdec(
        const char* hex_str)
{
    char *end_ptr;
    long int res;

    if (hex_str == NULL || hex_str[0] == '\0') {
        return 0;
    }

    res = strtol(hex_str, &end_ptr, 16);
    if (*end_ptr != '\0') {
        return -1;
    }

    return res;
}

const char* ut_binhex(
        const char* bin_str,
        size_t      bin_sz,
        char*       hex_str)
{
    size_t i = 0;
    for (i = 0; i < bin_sz; i++) {
        int high    = (unsigned char)bin_str[i] / 16;
        int low     = (unsigned char)bin_str[i] % 16;
        hex_str[2 * i]      = (high >= 10) ? (high - 10 + 'a') : (high + '0');
        hex_str[2 * i + 1]  = (low  >= 10) ? (low  - 10 + 'a') : (low  + '0');
    }
    hex_str[2 * i] = '\0';

    return hex_str;
}


