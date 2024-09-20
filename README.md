# bcm2835

Pure C library for the Raspberry Pi 2. It provides access to
GPIO and other IO functions on the Broadcom BCM2836 chip, which is very similar to the BCM2835.

Stripped down/refactored version of [bcm2835](https://www.airspayce.com/mikem/bcm2835/) from Mike McCauley.

When linking with the library, also link with `libgcc` (`-lgcc`). This is needed for division.
