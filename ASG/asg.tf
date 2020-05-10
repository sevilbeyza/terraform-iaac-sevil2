module "from-git" {
  source             =   "farrukh90/asg/aws"
  #region            =   "us-west-2"
  region             = "${var.region}"
  image_owner       =   "137112412989"              #Give image owner. Currently it uses AWS AMI. You can give any owner ID
  desired_capacity  =   2
  max_size          =   2
  min_size          =   1
}