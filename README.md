chronotext-build
================

Harfbuzz
--------

Use this [script](hb/build.sh) to build [v0.9.24](https://github.com/behdad/harfbuzz) for OSX (i386, x86_64), iOS (armv7, arm64, i386) and Android (armeabi-v7a.)

**Notes**

1. Building for OSX and iOS requires XCode 6.1.1
2. The headers of [Freetype](http://www.freetype.org) (v2.5.5) are included since they are necessary for the build.
3. Harfbuzz must be [prepared as follows](https://github.com/arielm/chronotext-build/wiki/How-to-prepare-Harfbuzz).

ICU (common)
------------

Use this [script](icu-common/build.sh) to build [v52.1](http://source.icu-project.org/repos/icu/icu/tags/release-52-1) for OSX (i386, x86_64), iOS (armv7, arm64, i386) and Android (armeabi-v7a.) 
