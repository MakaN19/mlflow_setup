## Cloudformation manual execution
If you want to execute Cloudformation template manually, you can use the following commands.

```bash
aws cloudformation deploy --no-execute-changeset \
  --template-file cfn_template.yaml \
  --stack-name custom-deploy-mlflow \
  --capabilities CAPABILITY_NAMED_IAM \
  --profile <profile-name>
```
