cnn_2d_conv_d4x4_k3x3 - works, has no activation
cnn_2d_conv_d8x8_k5x5 - works, has no activation
cnn_conv_d4x4_k3x3    - works
cnn_conv_d32x32_k3x3  - works
cnn_conv_d64x64_k3x3  - works
cnn_conv_d94x94_k3x3  - works (note stack size)
cnn_conv_d128x128_k3x3 - not working - (probably stack size, dont care)

cnn_pool_d92x92_p2x2  - unclear
cnn_pool_d60x60_p2x2  - working (stack size ...)
cnn_pool_d16x16_p2x2  - works