# 개인 지식 베이스

> Dataview 자동 대시보드 · LLM이 유지하는 개인 위키

**빠른 이동:** [[index]] · [[log]] · [[CLAUDE]] · [[사용법]]

---

## 📈 보유 종목

```dataview
TABLE 체결가, 수량, 전략
FROM "wiki/investments"
WHERE type = "매매일지" AND status = "보유중"
SORT date DESC
```

---

## 📋 최근 매매 (10건)

```dataview
TABLE 종목, 거래유형, 수익률, status AS "상태"
FROM "wiki/investments"
WHERE type = "매매일지"
SORT date DESC
LIMIT 10
```

---

## 📚 독서 현황

```dataview
TABLE author AS "저자", rating AS "평점", status AS "상태"
FROM "wiki/books/독서록"
WHERE type = "독서록"
SORT date DESC
```

---

## 💻 최근 TIL (10건)

```dataview
TABLE tech AS "기술"
FROM "wiki/dev/TIL"
WHERE type = "TIL"
SORT date DESC
LIMIT 10
```

---

## 운영 방법

1. **소스 추가**: `raw/` 폴더에 파일 추가 후 LLM에게 "처리해줘" 요청
2. **질문**: LLM에게 자유롭게 질문 → wiki 기반으로 답변
3. **회고 작성**: 템플릿(`templates/`) 참조하거나 LLM에게 요청
4. **wiki 점검**: 주기적으로 LLM에게 "wiki 린트 해줘" 요청

> LLM 운영 상세 지침: [[CLAUDE]]
