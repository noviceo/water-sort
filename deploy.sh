#!/bin/bash
# Claude Code로 index.html 수정 후 이 스크립트 실행 → GitHub 자동 배포
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

echo "🔍 변경사항 확인..."
git diff --stat

if git diff --quiet && git diff --cached --quiet; then
  echo "✅ 변경사항 없음. 배포 스킵."
  exit 0
fi

echo ""
read -p "커밋 메시지 (기본: 'Update game'): " MSG
MSG="${MSG:-Update game}"

git add -A
git commit -m "$MSG"
git push origin main

echo ""
echo "✅ GitHub에 푸시 완료! GitHub Actions가 자동 배포 중..."
echo "📋 배포 상태: https://github.com/noviceo/water-sort/actions"
echo "🌐 게임 URL: https://noviceo.github.io/water-sort/"
