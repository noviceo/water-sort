# Water Sort Puzzle — Claude Code Instructions

## 배포 방법
`index.html` 수정 후 반드시 아래 명령으로 GitHub에 푸시할 것:

```bash
cd /Users/sungmincho/Desktop/code/water-sort
git add index.html
git commit -m "<변경 내용 요약>"
git push origin main
```

푸시하면 GitHub Actions가 자동으로 https://noviceo.github.io/water-sort/ 에 배포한다.

## 규칙
- 수정 요청을 완료한 뒤 **항상** git push까지 완료할 것
- 커밋 메시지는 한국어로, 변경 내용을 간결하게 요약
- `index.html` 단일 파일에 모든 CSS/JS가 인라인으로 포함되어 있음
- 레벨 데이터 수정 시 각 색이 정확히 4개씩인지 확인할 것
- `localStorage` 키 `water_sort_progress_v1` 변경 금지 (사용자 기록 초기화됨)
