module "nextcloud_deploy" {
 source  = "fuchicorp/chart/helm"
  version = "0.0.3"
  deployment_name        = "nextcloud-deployment"
  deployment_environment = "dev"
  deployment_endpoint    =  "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "chart-cloud"

    template_custom_vars = {
    deployment_image = "${var.deployment_image}"
  }

    env_vars = {
        mysql_user = "MYSQL_USER"
        mysql_host = "MYSQL_HOST"
        mysql_database = "MYSQL_DATABASE"
        mysql_password = "MYSQL_PASSWORD"
    }


}