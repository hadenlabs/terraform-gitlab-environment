module "project" {
  source  = "hadenlabs/project/gitlab"
  version = ">=0.3.2"

  providers = {
    gitlab = gitlab
  }

  namespace_id = data.gitlab_group.this.id
  name         = var.project_name
  description  = "gitlab project"
  visibility   = "public"
}

module "main" {
  depends_on = [
    module.project
  ]
  source = "../.."
  providers = {
    gitlab = gitlab
  }

  project_name = module.project.instance.path_with_namespace
  scope        = var.scope
  variables    = var.variables
}
