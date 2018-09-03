# upload image to a registry, e.g. aws ecr.

# login aws.
aws_login=$(aws ecr get-login --no-include-email --region us-east-1);
sudo $aws_login

# retag.
sudo docker tag [local_image] [remote_image]

# push.
sudo docker push [remote_image]