resource "github_repository" "readonly-poly-repo" {
  for_each = toset(["foo", "bar"])

  name         = "terraform-module-${each.key}"
  description  = "This repository is read only"
  homepage_url = "https://github.com/yuya-takeyama/terraform-modules"

  visibility = "public"

  has_issues   = false
  has_projects = false
  has_wiki     = false
}
