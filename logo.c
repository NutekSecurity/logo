#include <stdio.h>
#include "logo-lib.h"

int main() {
    char* logo_string = logo();
    printf("\033[1;31m");
    printf("::::    ::: :::    ::: ::::::::::: :::::::::: :::    :::\n");
    printf("\033[1;31m");
    printf(":+:+:   :+: :+:    :+:     :+:     :+:        :+:   :+:             ♪\n");
    printf("\033[1;32m");
    printf(":+:+:+  +:+ +:+    +:+     +:+     +:+        +:+  +:+      ^_^  ♪\n");
    printf("\033[1;32m");
    printf("+#+ +:+ +#+ +#+    +:+     +#+     +#++:++#   +#++:++      ('.')  ♪\n");
    printf("\033[1;32m");    
    printf("+#+  +#+#+# +#+    +#+     +#+     +#+        +#+  +#+     M>^<M\n");
    printf("\033[1;34m");
    printf("#+#   #+#+# #+#    #+#     #+#     #+#        #+#   #+#   ~(m.m)\n");
    printf("\033[1;34m");
    printf("###    ####  ########      ###     ########## ###    ### security.com\n");
    printf("\033[0m");
    printf("%s", logo_string);
    printf("%s", logo_black());
    return 0;
}
