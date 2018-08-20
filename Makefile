validate:
	npx cfn-lint validate cloudformation/network.yml
	npx cfn-lint validate cloudformation/ec2-instance.yml
	npx cfn-lint validate cloudformation/security-group.yml

deploy-network:
	aws cloudformation deploy --stack-name cfn-practice-network --template-file cloudformation/network.yml

deploy-security-group:
	aws cloudformation deploy --stack-name cfn-practice-security-group --template-file cloudformation/security-group.yml

deploy-ec2-instance:
	aws cloudformation deploy --stack-name cfn-practice-ec2-instance --template-file cloudformation/ec2-instance.yml
