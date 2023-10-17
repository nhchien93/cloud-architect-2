# Run IAAC

Check tf format
```sh
$ terraform fmt -recursive
```

Create AWS Profile on your machine
```sh
$ aws configure --profile uda
```
Provide your aws access key id, aws secret access key and aws session token

Run
```sh
$ AWS_PROFILE=uda terraform init
$ AWS_PROFILE=uda terraform plan
$ AWS_PROFILE=uda terraform apply
```
