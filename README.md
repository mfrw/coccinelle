# Coccinelle Scripts
This Repository contains some of Coccinelle scripts written by or used by me to find/solve Linux Kernel bugs.

The linux kernel contains a dedicated coccinelle folder also, which is placed in the scripts folder.
Running make coccicheck MODE=<report|patch|chain> 
will run all the coccinelle scripts present below the coccinelle subdir to the kernel.
make coccicheck MODE=<report|patch|chain> M=/module/path/
will run coccinlle on the selected module only.
