# 작업 로그

> append-only. 새 항목은 파일 맨 위에 추가합니다.
> 형식: `## [YYYY-MM-DD] 작업유형 | 제목`
> 작업유형: `ingest` | `query` | `lint` | `setup`
>
> 빠른 검색: `grep "^\## \[" log.md | head -10`

---

## [2026-06-27] ingest | TIGER 차이나항셍테크 투자복기

- wiki/investments/회고/20260627_TIGER차이나항셍테크_복기.md 생성
- 매매 4회차 데이터 입력 (총 487주 / 4,070,135원 / 평균 8,358원)
- 분석 섹션은 사용자 직접 작성 예정

## [2026-06-27] ingest | 이방인 — 알베르 카뮈 (1독)

- raw/books/이방인_20260624.md → wiki/books/독서록/이방인.md 생성
- 사용자 1독 내용 그대로 보존, 2독용 문학 분석 섹션(작가·작품맥락·주제·인물·상징·서사기법) 플레이스홀더 추가
- index.md 독서록 섹션 첫 항목 등록

## [2026-06-27] setup | 독서록 템플릿 고도화

- templates/독서록.md: 문학 전용 섹션 추가 (작가 & 시대 배경, 작품 맥락, 핵심 주제, 인물 분석, 상징과 이미지, 서사 기법)
- CLAUDE.md: 문학 vs 비문학 처리 방침, 다회독 처리 방침, 파일명 단축 트리거 추가

## [2026-06-22] setup | 구조·포맷 개선 (v2)

- 매매일지 템플릿에 frontmatter 추가 (type/date/ticker/종목/sector/거래유형/전략/수익률/status)
- Home.md: Dataview 자동 대시보드로 재작성 (보유종목·최근매매·독서·TIL 4개 뷰)
- index.md: 전수 기록 → 핵심 페이지 큐레이션 전용으로 경량화
- 링크 규칙 통일: 풀패스 → 짧은 이름 `[[파일명]]` (템플릿 5개 일괄 적용)
- CLAUDE.md: 링크 규칙·frontmatter 스키마·운영 절차·설치 플러그인 목록 갱신
- 포트폴리오.base 생성 (매매일지 테이블 뷰), 무제.base 제거
- 중복 파일 제거: 투자노트/stock-trade-journal-template.md → canonical은 templates/매매일지.md
- 사용법.md: 위 변경 내역 전체 반영 + 개선 내역 섹션 추가

## [2026-06-17] setup | 보관함 초기 구조 생성

- LLM Wiki 패턴 기반으로 보관함 디렉토리 구조 생성
- 생성된 핵심 파일: CLAUDE.md, Home.md, index.md, log.md
- 생성된 영역: investments, books, dev, personal
- 기존 매매일지 템플릿 templates/로 이동 및 보존
- 생성된 템플릿: 매매일지, 투자회고, 독서록, TIL, 개인회고, 종목분석
