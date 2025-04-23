resource "azurerm_container_registry_task" "acr_task" {
  name                  = "${var.acr_name}-task"
  container_registry_id = azurerm_container_registry.acr.id
#   location              = var.location
  platform {
    os = "Linux"
  }

  docker_step {
    context_path         = "https://github.com/sourabhSurya/Azure-task8.git"
    context_access_token = var.git_pat           # Only if repo is private
    dockerfile_path      = "application/Dockerfile"
    image_names          = ["${var.image_name}:latest"]
  }

  source_trigger {
    name            = "git-trigger"
    source_type     = "Github"
    repository_url  = "https://github.com/sourabhSurya/Azure-task8.git"
    branch          = "main"
    events          = ["commit"]
  }

  tags = var.tags
}
