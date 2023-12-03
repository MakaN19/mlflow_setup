## Cloudformation manual execution
If you want to execute Cloudformation template manually, you can use the following commands.

```bash
aws cloudformation deploy --no-execute-changeset \
  --template-file cfn_template.yaml \
  --stack-name custom-deploy-mlflow \
  --capabilities CAPABILITY_NAMED_IAM \
  --profile <profile-name>
```

It's a good practice to check if the template adhers to best practices. To check whether refactoring is needed, use [cfn-lint](https://github.com/aws-cloudformation/cfn-lint).

```bash
pip install cfn-lint
cfn-lint cfn_template.yaml
```
