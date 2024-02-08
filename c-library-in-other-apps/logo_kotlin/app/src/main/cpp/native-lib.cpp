#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring

JNICALL
Java_com_example_logo_1kotlin_MainActivity_logoBlack(
        JNIEnv *env,
        jobject /* this */) {
    std::string hello =
            "::::    ::: :::    ::: ::::::::::: :::::::::: :::    :::\n"
            ":+:+:   :+: :+:    :+:     :+:     :+:        :+:   :+:             ♪\n"
            ":+:+:+  +:+ +:+    +:+     +:+     +:+        +:+  +:+      ^_^  ♪\n"
            "+#+ +:+ +#+ +#+    +:+     +#+     +#++:++#   +#++:++      ('.')  ♪\n"
            "+#+  +#+#+# +#+    +#+     +#+     +#+        +#+  +#+     M>^<M\n"
            "#+#   #+#+# #+#    #+#     #+#     #+#        #+#   #+#   ~(m.m)\n"
            "###    ####  ########      ###     ########## ###    ### security.com\n";
    return env->NewStringUTF(hello.c_str());
}
