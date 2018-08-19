validate:
	npx cfn-lint validate cloudformation/network.yml
	npx cfn-lint validate cloudformation/ec2-instance.yml

deploy-network:
	aws cloudformation deploy --stack-name cfn-practice-network --template-file cloudformation/network.yml

deploy-ec2-instance:
	aws cloudformation deploy --stack-name cfn-practice-ec2-instance --template-file cloudformation/ec2-instance.yml
