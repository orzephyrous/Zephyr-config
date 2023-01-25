$leaf = Split-Path $PWD -Leaf
foreach ($file in $args) {7z a "$leaf.zip" $file -tzip}
