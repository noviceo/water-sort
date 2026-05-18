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

## 버전 관리

현재 버전은 `index.html` 첫 줄 주석 `<!-- version: X.Y.Z -->` 로 기록한다.

| 변경 유형 | 버전 올리는 자리 | 예시 |
|---------|--------------|------|
| 버그 수정 | patch (Z) | 1.0.2 → 1.0.3 |
| 기능 추가·개선 | minor (Y) | 1.0.2 → 1.1.0 |
| 대규모 개편 | major (X) | 1.0.2 → 2.0.0 |

### 릴리스 이력
| 버전 | 커밋 | 내용 |
|------|------|------|
| 1.0.0 | `9082b6a` | 최초 안정 버전 (Claude Code 배포 설정 완료) |
| 1.0.1 | `bb386a3` | 애니메이션 속도 1.7배 향상 (700ms → 420ms), streamGrow·dropletFall 키프레임 버그 수정 |
| 1.0.2 | `0b9fe14` | 모바일 컨트롤 버튼 overflow 버그 수정 |
| 1.0.3 | — | 물줄기 애니메이션 제거 |
| 1.0.4 | — | 물방울 파티클 제거 (효과음 유지) |

### 버전 업 절차
1. `index.html` 첫 줄 `<!-- version: X.Y.Z -->` 숫자 수정
2. 커밋 메시지에 버전 포함: `[v1.0.3] 수정 내용`
3. push

## 규칙
- 수정 요청을 완료한 뒤 **항상** git push까지 완료할 것
- 커밋 메시지는 한국어로, 변경 내용을 간결하게 요약
- `index.html` 단일 파일에 모든 CSS/JS가 인라인으로 포함되어 있음
- 레벨 데이터 수정 시 각 색이 정확히 4개씩인지 확인할 것
- `localStorage` 키 `water_sort_progress_v1` 변경 금지 (사용자 기록 초기화됨)
