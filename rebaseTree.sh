git fetch --multiple super_upstream origin

git checkout develop ; git pull

git checkout release ; git pull

git checkout releaseNFC ; git pull

git checkout PR_redex_optimisation ; git rebase develop
# git push origin PR_redex_optimisation --force

git checkout experiments/feature_ePassport ; git rebase develop
# git push origin experiments/feature_ePassport --force
# git push upstream experiments/feature_ePassport --force

# git checkout PR_fix_security_level_icon_rendering ; git rebase develop
# git push origin PR_fix_security_level_icon_rendering --force

# git checkout PR_fix_challenge_presenter_popsup_issue ; git rebase develop
# git push origin PR_fix_challenge_presenter_popsup_issue --force

# git checkout PR_cleanup_diagnostics_on_instorepay_reset ; git rebase develop
# git push origin PR_cleanup_diagnostics_on_instorepay_reset --force


# consumersg / aardvark

# git checkout Applause_Build ; git rebase develop
# git push origin Applause_Build --force
# git push upstream Applause_Build --force












