variable "default_tags" {
  default = {
    TFRepoDirectory = "global/prod/main/ec2"
  }
  type = map(string)
}

variable "key_name" {
  default = "my_aws_key"
  type = string
}

variable "instance_type" {
  default = "t3.micro"
  type = string
}

variable "policies_to_attach" {
  default = [
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
    "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  ]
  type = list(string)
}
