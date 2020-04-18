variable "region" {
  }

variable "amitype" {
  }

variable "i_type" {
  }

variable "project" {
  }

variable "azs" {
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }

variable "subs" {
  type = "list"
  default = ["subnet-09ccff9de42fe92c6", "subnet-0cc7ad0cae1cf039c", "subnet-0e27e902cb9b61ae8"]
}
