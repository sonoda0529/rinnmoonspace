# Deno의 최신 버전을 기반으로 하는 이미지 사용
FROM denoland/deno:latest

# 작업 디렉토리를 /app으로 설정
WORKDIR /app

# 로컬 프로젝트 파일을 컨테이너로 복사
COPY . .

# Deno가 기본적으로 사용하는 포트 8000을 노출
EXPOSE 8000

# 기본 실행 명령 설정 (필요 시 변경 가능)
CMD ["deno", "run", "--allow-net","--allow-read", "./src/main.js"]
