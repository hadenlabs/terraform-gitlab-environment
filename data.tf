data "gitlab_group" "this" {
  full_path = local.generated.path
}
