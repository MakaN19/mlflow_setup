## Cloudformation manual execution
If you want to execute Cloudformation template manually, you can use the following commands.

```bash
aws cloudformation deploy --no-execute-changeset \
  --template-file cfn_template.yaml \
  --stack-name custom-deploy-mlflow \
  --capabilities CAPABILITY_NAMED_IAM \
  --profile <profile-name>
```

To check if the template adhers to best practices use [cfn-lint](https://github.com/aws-cloudformation/cfn-lint).

```bash
pip install cfn-lint
cfn-lint cfn_template.yaml
```
