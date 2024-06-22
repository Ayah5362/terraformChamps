Terraform-Champs
Terraform Champs initiation offers practical Terraform tasks and a guide for beginners. At the start I will provide an AWS account for each champion, along with a list of daily tasks spanning four days.
Solve the terraform tasks in the Terraform champs workshop

Url :https://github.com/Mohamed-Eleraki/Terraform-Champs

Day one task
use IaC Terrafrom to build the following resource besides requirement specifications:

Create VPC.

Create Public subnet.

Create internet gateway attached to the subent.

Create route table to route all trrafic to the internet gateway.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.

Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"

Preferd to use variables.

Day Two task
use IaC Terrafrom to build the following resource besides requirement specifications:

Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket

Create S3 Bucket.

Enable S3 Bucker Versioning.

Disable ACL and ensure object ownership have "BucketOwnerEnforced"

Create a directory under the S3 Bucket called "logs"

Provide Bucket policy permission for your IAM user to upload object only under logs.

Force destroy Bucket even if the bucket is not empty.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.

Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"

Day Three task
use IaC Terrafrom to build the following resource besides requirement specifications:

Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket

Consider to use difrrent name that others (i.e. specify a unique name for state file key)
Create an S3 Bucket

Create Directories as (e.g. /log, /outgoing, /incomming)

Today's Example will Create an Amazon S3 storage and configure the S3 Lifecycle rules as as the following:

Transition all files under /log to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

Transition all files under /log to Archive access (i.e. Glacier) 90 consecutive days after creation time.

Transition all files under /log to Deep Archive access (i.e. Glacier Deep Archive) 180 consecutive days after creation time.

Remove all files under /log 365 consecutive days after creation time.

Transition all files under /outgoing with tag "notDeepArchive" to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

Transition all files under /outgoing to Archive access (i.e. Glacier) with tag "notDeepArchive" 90 consecutive days after creation time.

Transition all files under /incoming with size between 1MB to 1G to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

Transition all files under /incoming with size between 1MB to 1G to Archive access (i.e. Glacier) 90 consecutive days after creation time.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.

Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"

Preferd to use variables.

Day Three task
use IaC Terrafrom to build the following resource besides requirement specifications:

Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket

Consider to use difrrent name that others (i.e. specify a unique name for state file key)
Create an S3 Bucket

Create Directories as (e.g. /log, /outgoing, /incomming)

Today's Example will Create an Amazon S3 storage and configure the S3 Lifecycle rules as as the following:

Transition all files under /log to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

Transition all files under /log to Archive access (i.e. Glacier) 90 consecutive days after creation time.

Transition all files under /log to Deep Archive access (i.e. Glacier Deep Archive) 180 consecutive days after creation time.

Remove all files under /log 365 consecutive days after creation time.

Transition all files under /outgoing with tag "notDeepArchive" to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

Transition all files under /outgoing to Archive access (i.e. Glacier) with tag "notDeepArchive" 90 consecutive days after creation time.

Transition all files under /incoming with size between 1MB to 1G to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

Transition all files under /incoming with size between 1MB to 1G to Archive access (i.e. Glacier) 90 consecutive days after creation time.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.

Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"

Preferd to use variables.

Week Two task
using AWS documentations to learn more about Amazon Simple storage - S3 Bucket, besides using agile systems to submit tasks for your self of steps that you're walk through i.e. track your self, at the end create a document that summarize what did you learn. The Goal of these requirements is:

To get familiar with AWS Docs.
Dealing with Agile systems that organize your studying plan.
Learn typing professional documentations.
At the end of the week you should submit your list of what did you learn, and what you intend to learn next week, This helps you to track you self more. Then share with the DevOps Workshop Champs community your summarization document in order to help advance your documentaions writing skills.


Week Two Workshop
At the end of the week, submit the following workshop.
use IaC Terrafrom to build the following resource besides requirement specifications:
In the following task will walk thrugh the S3 creation from the AWS console and trying to build each option that appears on the console using Terrafrom

Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket

Consider to use difrrent name that others (i.e. specify a unique name for state file key)
Create a general pupose Bucket.

Configure the object ownership as "Bucket owner enforced".

Block all public access.

Enable bukcet versioning.

specify tags that include in the Requirement Specifications below.

Configure objects encryption as "SSE-S3".

Enable Bucket key.

Disable object lock.

Configure lifecycle expiration object at 7 days.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.

Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"

Preferd to use variables.

Week Three task
Using AWS documentations to DIG DEEP more about S3 Bucket Policy, AWS CLI s3 command, and AWS CLI s3api commands, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic to cover listed below in details

Dig deep into S3 policy
Get familiar with AWS CLI s3 commands.
Get familiar with AWS CLI s3api command,
Define the diffrencies between S3 and S3api commands.
Append new knowlege to your document.
Fork this repo and append you code samples.
Regarding AWS commands, Focusing on how to get and put objects.
At the end of the week you should submit your list of what did you learn, and what you intend to learn next week, This helps you to track you self more. Then share with the DevOps Workshop Champs community your summarization document in order to help advance your documentaions writing skills.

Week Three Workshop
At the end of the week, submit the following workshop.
use IaC Terrafrom to build the following resource besides requirement specifications:
In the following task will walk through the S3 creation, create IAM users and roles, configure S3 Policy, and test accessibility using AWS CLI s3 and s3api using IAM user credentials and IAM Role credentials using Terrafrom

Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket

Consider to use difrrent name that others (i.e. specify a unique name for state file key)
Create a general purpose Bucket.

Create a Directory under created S3 called "logs".

Create two IAM Users (Mostafa, Taha).

Create IAM Role for Taha have s3:GetObject policy from logs directory only.

Set an S3 Policy allow Mostafa to put objects (i.e. s3:PutObject) at the entire S3.

Check accessability using AWS CLI:

Utilizing AWS CLI s3 commands.
Utilizing AWS CLI s3api commands.
After all Create a fork from this repository, Then append your code at the code samples section below and request to accept.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.
Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"
Preferd to use variables.

Week Four task
Using AWS documentations to learn about EC2 instance types, VPC endpoints, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic to cover listed below in details

Learn about EC2 instance types.
VPC endpoints.
Append new knowlege to your document.
Fork this repo and append you code samples.
Design a diagram using draw.io of the below workshop.
At the end of the week you should submit your Weekly report of what did you learn, and what you intend to learn next week, This helps you to track you self more. Then share with the DevOps Workshop Champs community your summarization document in order to help advance your documentaions writing skills.

Week Four Workshop
At the end of the week, submit the following workshop.
use IaC Terraform to build the following resource besides requirement specifications:
In the following task will walk through the s3 creation, ec2 creation, create IAM Role holds s3 full access permission and attach it to the ec2, Then test accessibility by sending file to s3 from the ec2 machine using AWS CLI s3 and s3api using Terrafrom

Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket

Consider to use different name that others (i.e. specify a unique name for state file key)
Create a general purpose Bucket.

Create a Directory under created S3 called "logs".

Create IAM Role for The ec2 machine have s3 full access aws managed policy.

Create an ec2 machine holds the above role.

Check accessability using AWS CLI, by sending a file to s3 bucket from The EC2 machine.

After all Create a fork from this repository, Then append your code at the code samples section below and request to accept.

Requirement Specifications:
Resources must be created at us-east-1 region otherwise will fail.
Resources must have tags as below otherwise will fail
Key: "Environment" Value: "terraformChamps"
Key: "Owner" Value: "<type_your_name_here>"
Preferd to use variables.
