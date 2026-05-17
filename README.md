# 💧 물 정렬 퍼즐

색깔별로 물을 분류하는 퍼즐 게임입니다.

## 🎮 플레이

👉 **[게임 바로 플레이](https://[유저명].github.io/[저장소명])**

## 🚀 배포 구조

`main` 브랜치에 push하면 GitHub Actions가 자동으로 GitHub Pages에 배포합니다.

```
push to main
    ↓
GitHub Actions (deploy.yml)
    ↓
GitHub Pages 자동 배포
    ↓
https://[유저명].github.io/[저장소명]
```

## 📁 파일 구조

```
/
├── index.html          # 게임 본체
├── .github/
│   └── workflows/
│       └── deploy.yml  # 자동 배포 워크플로우
└── README.md
```

## 🎯 게임 특징

- 50 레벨 (⭐ ~ 💀💀💀)
- 힌트 기능 (레벨당 3회)
- 되돌리기 / 초기화
- 게임오버 감지 (BFS 탐색)
- 물 붓기 애니메이션 + 효과음
