#! /usr/bin/sh

# removes the directories which are empty because they contained non-processable files
find brick/ -mindepth 1 -maxdepth 1 -type d | 
grep -P '/(targetscan_70|targetscan_70_BL_PCT|TargetScan7_context_scores)$'|
xargs -I {} rm -rf {}