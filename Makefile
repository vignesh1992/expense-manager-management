REGION ?= eu-west-1
DEPLOYMENT_BUCKET ?= expense-manager-management

install: 
	rm -rf dist
	mkdir dist
	cd backend && npm install
	cd backend/app && npm install

pack-lambdas: install
	cd backend && zip -r dependency_layer.zip *
	cd backend/app/srv && zip -r expense-manager-lambdas.zip *
	mkdir dist/expense-manager
	mv backend/dependency_layer.zip dist/expense-manager/
	mv backend/app/srv/expense-manager-lambdas.zip dist/expense-manager/

deploy-lambdas: pack-lambdas
	aws s3 cp dist/expense-manager/expense-manager-lambdas.zip  s3://$(DEPLOYMENT_BUCKET) --region $(REGION)
	aws s3 cp dist/expense-manager/dependency_layer.zip  s3://$(DEPLOYMENT_BUCKET) --region $(REGION)
	aws lambda publish-layer-version --region $(REGION) --layer-name expense-manager-dependencies-layer --content  S3Bucket=$(DEPLOYMENT_BUCKET),S3Key=dependency_layer.zip
	
	aws lambda update-function-code --region $(REGION) --s3-bucket $(DEPLOYMENT_BUCKET) --s3-key expense-manager-lambdas.zip --function-name get-expense-categories