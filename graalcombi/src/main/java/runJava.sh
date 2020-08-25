export GRAALVM_BIN=/Users/arnout/.sdkman/candidates/java/20.1.0.r11-grl/bin
${GRAALVM_BIN}/javac GraalJavascript.java
${GRAALVM_BIN}/java GraalJavascript <<EOF
{"GraalVM":{"description":"Language Abstraction Platform","supports":["combining languages","embedding languages","creating native images"],"languages": ["Java","JavaScript","Node.js", "Python", "Ruby","R","LLVM"]}}
EOF
