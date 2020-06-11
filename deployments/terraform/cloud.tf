module "cloud_deploy" {
  source  = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "chart-cloud"


  template_custom_vars  = {     
   mysql_user     = "${var.mysql["mysql_user"]}"
   mysql_password = "${var.mysql["mysql_password"]}"
   mysql_database = "${var.mysql["mysql_database"]}"
   nextcloud_admin_user = "${var.nextcloud["nextcloud_admin_user"]}"
   nextcloud_admin_password = "${var.nextcloud["nextcloud_admin_password"]}"

  }
}