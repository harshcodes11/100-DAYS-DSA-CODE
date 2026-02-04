#!/bin/bash

DATES=(
  "2026-02-04" "2026-02-09" "2026-02-13"
  "2026-03-07" "2026-03-11" "2026-03-14"
  "2026-04-04" "2026-04-08" "2026-04-11"
  "2026-04-15" "2026-04-18" "2026-04-22"
)

for DATE in "${DATES[@]}"; do
  echo "update $DATE" >> log.txt
  git add .
  GIT_AUTHOR_DATE="${DATE}T12:00:00" GIT_COMMITTER_DATE="${DATE}T12:00:00" git commit -m "daily update: $DATE"
done

git push origin main --force