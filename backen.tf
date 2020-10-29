terraform {
  backend "remote" {
    organization = "DanskeIT"
    workspaces {
      name = "terraform-test"
    }
  }
}
