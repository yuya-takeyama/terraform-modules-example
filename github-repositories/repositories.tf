data "external" "modules" {
  program = ["node", "get-modules.js"]
}

resource "github_repository" "readonly-poly-repo" {
  for_each = toset(split("\n", data.external.modules.result.modules))

  name         = "terraform-module-example-${each.key}"
  description  = "This repository is read only"
  homepage_url = "https://github.com/yuya-takeyama/terraform-modules-example"

  visibility = "public"

  has_issues   = false
  has_projects = false
  has_wiki     = false
}
