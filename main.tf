terraform {
  required_version = ">= 1.9.5"
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
  }
}

resource "helm_release" "app" {
  name = var.app_name

  namespace = var.app_namespace

  cleanup_on_fail = true
  replace         = true
  atomic          = true

  chart = "./charts/app-deploy-template"

  values = [
      "${file("values.yaml")}",
    ]
}

