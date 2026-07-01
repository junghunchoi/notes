#!/bin/bash
# obsidian vault → quartz content/ 동기화 스크립트
VAULT="/Users/junghun/obsidian/obsidian"
CONTENT="/Users/junghun/quartz/content"

rsync -av --delete \
  --exclude='.obsidian' \
  --exclude='포트폴리오.base' \
  "$VAULT/" "$CONTENT/"

echo ""
echo "동기화 완료. 변경사항을 커밋하려면:"
echo "  cd /Users/junghun/quartz"
echo "  git add -A && git commit -m 'update notes' && git push"
