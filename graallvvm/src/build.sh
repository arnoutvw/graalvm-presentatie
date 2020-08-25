export GRAALVM_BIN=/Users/arnout/.sdkman/candidates/java/20.1.0.r11-grl/bin
export LLVM_TOOLCHAIN=$($GRAALVM_BIN/lli --print-toolchain-path)
$LLVM_TOOLCHAIN/clang hello.c -o hello
$GRAALVM_BIN/lli hello
