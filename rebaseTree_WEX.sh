git fetch --multiple upstream origin

git checkout develop ; git pull

git checkout PR_nfcsdk_0_5_4 ; git rebase develop

git checkout PR_uploaddiagnosticsresult_string_ids ; git rebase develop

git checkout custom_applause_build_6 ; git rebase develop

# git push origin PR_nfcsdk_0_5_4 --force
# git push origin PR_uploaddiagnosticsresult_string_ids --force
# git push origin custom_applause_build_6 --force








