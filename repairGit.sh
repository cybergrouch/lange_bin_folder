current_branch=`git rev-parse --abbrev-ref HEAD`
parent_branch=`git show-branch -a | ack '\*' | ack -v "$current_branch" | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'`

echo "Reparing git branch: " $current_branch
echo "Base branch: " $parent_branch

# git checkout f_r_a ; git reset --hard $1
# git checkout $1 ; git reset