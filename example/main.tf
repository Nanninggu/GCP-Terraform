module "compute_instance" {
  source        = "./modules/compute_instance"
  project       = "wide-strength-446602-s8"
  region        = "asia-northeast3"
  instance_name = "terraform-instance"
  machine_type  = "e2-micro"
  zone          = "asia-northeast3-a"
  image         = "ubuntu-os-cloud/ubuntu-1804-bionic-v20210817"
  network       = "projects/wide-strength-446602-s8/global/networks/vpc-tester-01"
  subnetwork    = "projects/wide-strength-446602-s8/regions/asia-northeast3/subnetworks/subnet-tester-01"
}

module "compute_instance_01" {
  source       = "./modules/compute_instance"
  project      = "wide-strength-446602-s8"
  region       = "asia-northeast3"
  instance_name = "terraform-instance-01" // _ 사용하면 에러발생함.
  machine_type = "e2-micro"
  zone         = "asia-northeast3-a"
  image        = "ubuntu-os-cloud/ubuntu-1804-bionic-v20210817"
  network      = "projects/wide-strength-446602-s8/global/networks/vpc-tester-01"
  subnetwork   = "projects/wide-strength-446602-s8/regions/asia-northeast3/subnetworks/subnet-tester-01"
}

module "compute_instance_02" {
  source       = "./modules/compute_instance"
  project      = "wide-strength-446602-s8"
  region       = "asia-northeast3"
  instance_name = "terraform-instance-02" // _ 사용하면 에러발생함.
  machine_type = "e2-micro"
  zone         = "asia-northeast3-a"
  image        = "ubuntu-os-cloud/ubuntu-1804-bionic-v20210817"
  network      = "projects/wide-strength-446602-s8/global/networks/vpc-tester-01"
  subnetwork   = "projects/wide-strength-446602-s8/regions/asia-northeast3/subnetworks/subnet-tester-01"
}

module "gcs_bucket" {
  source        = "./modules/gcs_bucket"
  project       = "wide-strength-446602-s8"
  region        = "asia-northeast3"
  bucket_name = "my-terraform-bucket-seungkim" // 겹치지 않게 고유한 이름으로 만들어야 됨.
  force_destroy = true
}