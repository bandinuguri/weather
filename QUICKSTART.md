# 빠른 시작 가이드 (담당자용)

## 1. 저장소 클론

```bash
git clone https://github.com/bandinuguri/weather.git
cd weather
```

## 2. 백엔드 실행

### Windows PowerShell:
```powershell
# Python 의존성 설치
pip install fastapi uvicorn playwright

# Playwright 브라우저 설치
playwright install chromium

# 백엔드 서버 실행
python app.py
```

백엔드가 http://localhost:8000 에서 실행됩니다.

## 3. 프론트엔드 실행 (새 터미널)

### Windows PowerShell (새 창):
```powershell
# 프론트엔드 폴더로 이동
cd 항공기상정보조회

# Node.js 의존성 설치
npm install

# 개발 서버 실행
npm run dev
```

프론트엔드가 http://localhost:3000 에서 실행됩니다.

## 4. 접속

브라우저에서 **http://localhost:3000** 접속

---

## 문제 해결

### "pip를 찾을 수 없습니다" 오류
- Python 설치: https://www.python.org/downloads/
- 설치 시 "Add Python to PATH" 체크

### "npm을 찾을 수 없습니다" 오류
- Node.js 설치: https://nodejs.org/
- LTS 버전 다운로드 및 설치

### 포트가 이미 사용 중
```powershell
# 8000번 포트 사용 중인 프로세스 종료
netstat -ano | findstr :8000

# 3000번 포트 사용 중인 프로세스 종료
netstat -ano | findstr :3000
```

---

## 한 번에 실행하기 (배치 파일)

### `start.bat` 파일 생성:
```batch
@echo off
echo 백엔드 서버 시작...
start cmd /k "python app.py"

timeout /t 3

echo 프론트엔드 서버 시작...
start cmd /k "cd 항공기상정보조회 && npm run dev"

echo.
echo 서버가 시작되었습니다!
echo 백엔드: http://localhost:8000
echo 프론트엔드: http://localhost:3000
echo.
echo 브라우저에서 http://localhost:3000 을 열어주세요.
pause
```

이 파일을 더블클릭하면 자동으로 두 서버가 실행됩니다.

---

## 종료 방법

각 터미널 창에서 `Ctrl + C` 누르기
