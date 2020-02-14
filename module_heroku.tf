module "heroku_app" {
  source = "github.com/yuta17/terraform-modules/heroku"

  name = "procome"
  config_vars = {
    NPM_CONFIG_PRODUCTION = false,
    NODE_ENV = "production"
  }
  buildpacks = [
    "heroku/ruby",
    "heroku/nodejs"
  ]
  database_plan = "heroku-postgresql:hobby-dev"
}
