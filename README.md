# GCP Terraform 프로젝트

이 저장소는 Terraform을 사용해 Google Cloud Platform에 리소스를 배포하기 위한 예시 프로젝트입니다.

## 파일 구성
- **main.tf**: 주요 Terraform 설정
- **modules/compute_instance**: VM 인스턴스를 생성하는 모듈

## 사용 방법
1. `terraform init`으로 초기 설정
2. `terraform plan` 명령어로 변경 사항 확인
3. `terraform apply`로 실제 리소스 생성

## 주의 사항
- 인스턴스 이름에 `_`(언더스코어)를 사용하면 에러가 발생할 수 있으니 주의하세요.
- `.terraform/` 같은 폴더는 `.gitignore`에 포함되어야 합니다.