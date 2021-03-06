variable "working_dir" {}

variable "dirs" {
  type    = "list"
  default = ["", "conf", "rootfs"]
}

# NOTE: this variable won't actually be used for anything and the actual `depends_on` keyword 
# in terraform does not support interpolation.
variable "depends_on" {
  type        = "list"
  description = "Define a list of variables that this module depends on in order to force serialized execution."
  default     = []
}
