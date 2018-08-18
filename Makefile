validate:
	npx cfn-lint validate cloudformation.yml

deploy:
	aws cloudformation deploy --stack-name cfn-practice --template-file cloudformation.yml
