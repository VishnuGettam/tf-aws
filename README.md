# tf-aws
terraform project to build infra building in aws provider

''' 
tf-aws/
├── bootstrap/                  # one-time: creates the S3 state bucket (+ KMS key)
│   ├── main.tf
│   └── outputs.tf
├── modules/                    # reusable, environment-agnostic building blocks
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── versions.tf
│   ├── s3/
│   ├── iam/
│   └── ...
├── environments/               # thin root modules: wiring + values only
│   ├── dev/
│   │   ├── backend.tf          # state key: dev/terraform.tfstate
│   │   ├── providers.tf
│   │   ├── versions.tf
│   │   ├── main.tf             # calls ../../modules/*
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── terraform.tfvars    # auto-loaded, no -var-file needed
│   └── qa/                     # same files, different values + state key
├── .gitignore
├── .pre-commit-config.yaml     # fmt, validate, tflint, checkov
└── README.md

'''