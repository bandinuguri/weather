@echo off
echo ========================================
echo 항공기상정보 조회 시스템 시작
echo ========================================
echo.

echo [1/2] 백엔드 서버 시작 중...
start "Backend Server" cmd /k "python app.py"

echo 백엔드 서버 초기화 대기 중...
timeout /t 5 /nobreak >nul

echo.
echo [2/2] 프론트엔드 서버 시작 중...
start "Frontend Server" cmd /k "cd 항공기상정보조회 && npm run dev"

echo.
echo ========================================
echo 서버가 시작되었습니다!
echo ========================================
echo.
echo 백엔드:     http://localhost:8000
echo 프론트엔드: http://localhost:3000
echo.
echo 브라우저에서 http://localhost:3000 을 열어주세요.
echo.
echo 종료하려면 각 서버 창에서 Ctrl+C 를 누르세요.
echo ========================================
pause
