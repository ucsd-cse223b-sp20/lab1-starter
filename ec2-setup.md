

# Steps to set up EC2 instance for Labs

## If you want to use UCSD AWS Student account with AWS credit:
Go to: http://awsed.ucsd.edu/, and select class `CSE223B_SP21_A00` to sign in to get to AWS console. Since this is a restricted account, you will have very limited permissions so unless you follow proper steps,
you are going to hit errors that usually do not make sense.
1. Make sure you selected the Oregon (`us-west-2`) region. That seems to be the safe one for now.
2. Locate our AMI.
    - From the navigation bar, choose AMIs.
    - In the menu next to the search bar, and then choose `Public Images` and search `"ucsd"`.
    - Our image named `ucsd-223b-sp21-labs` should show up. If not, double-check your region once again and let us know.
3. Select the Image and click "Launch". 
    - Step 2: Keep the pre-selected free-tier instance.
    - Step 3: Keep defaults, and click "Next".
    - Step 4: Keep defaults, and click "Next".
    - Step 5: Keep defaults, and click "Next".
    - Step 6: Choose an existing security group. **Find the security group named `CSE 223B SP 21` (with id: `sg-06d62749f0522bc7c`) and use that one**. You will not have permissions for most other groups.
    - Step 7: Keep defaults, and click "Launch".
    - Create a new key-pair with a name recognizable to you. Make sure to download and save it properly.
    - Proceed with launch.
4. Once launched, go to ec2 dashboard. There will a big list of instances, you can find yours by the "Key Name" or "Launch Time" columns.


## If you are using your personal AWS account:
Follow the instructions [here](https://aws.amazon.com/premiumsupport/knowledge-center/launch-instance-custom-ami) to launch an EC2 instance from our custom AMI named `ucsd-223b-sp21-labs`. 
Note that it is currently only available in N. California (`us-west-1`) and Oregon (`us-west-2`) regions.
Let us know if you want it in a different region for any reason. 


## Notes
1. [Launch EC2 instance from custom image](https://aws.amazon.com/premiumsupport/knowledge-center/launch-instance-custom-ami)
2. [Instructions on how to create an EC2 image](https://docs.aws.amazon.com/quickstarts/latest/vmlaunch/step-1-launch-instance.html)
3. Use free-tier eligible instance sizes like `t2.micro` which works fine for all labs (tried and tested). We recommend saving your AWS credits for your final open-ended projects.
