$leaf = Split-Path $PWD -Leaf
foreach ($file in $Args[1..$Args.Count]) {7z a "$leaf.zip" $file -tzip}
lf -remote "send $($Args[0]) unselect"
lf -remote "send $($Args[0]) select '$leaf.zip'"
