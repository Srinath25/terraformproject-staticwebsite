# terraformproject-staticwebsite
AWS S3 Static Website Hosting using Terraform
![270153991-ab68ff80-7841-4674-9b3c-ceac0710a39b](https://github.com/Srinath25/terraformproject-staticwebsite/assets/125643384/ca99ed6c-6e78-4654-81ad-dcacdba73de9)
Key Components and Features:

Terraform Infrastructure as Code (IaC):
I utilized Terraform, an IaC tool, to define and provision the AWS resources required for my static website hosting solution. This allows for version-controlled, repeatable infrastructure deployments.

AWS S3 Bucket:
I created an S3 bucket to store and serve the static website files. This bucket is configured for website hosting, allowing for easy content delivery.

Steps:

1. I have installed Terraform and the AWS Command Line Interface (CLI) on my local machine. I configured my AWS credentials by running "aws configure" and providing my AWS access key and secret key.
2. I have prepared my own static website to host the webpage of my resume using HTML as index.html and error.html. I have placed them in the directory where my Terraform configuration files are located.
3. I have created main.tf, provider.tf, and output.tf files to define the infrastructure as code using Terraform.
4. I have defined the output.tf file to display the website end point of the static website hosted S3bucket.
   ![Screenshot (1137)](https://github.com/Srinath25/terraformproject-staticwebsite/assets/125643384/1c43b933-e459-4400-9442-9389f452ecc7)
5. I have successfully created the s3 buckets with the necessary HTML files in AWS S3 to host the website using Terraform Infrastructure as Code.
   ![Screenshot (1138)](https://github.com/Srinath25/terraformproject-staticwebsite/assets/125643384/c9ccff4d-70d6-4b9c-bd5c-353362f68f5d)
6. The website is hosted successfully in the S3 bucket.
   ![Screenshot (1139)](https://github.com/Srinath25/terraformproject-staticwebsite/assets/125643384/5191fbad-1d72-4296-b42a-c7a526cc49ba)
7. Checked the error page.
   ![Screenshot (1140)](https://github.com/Srinath25/terraformproject-staticwebsite/assets/125643384/9e2769c9-a2bc-4eb5-9906-f498b57e5f82)

   
