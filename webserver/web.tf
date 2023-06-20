module "webserver" {
    source = "git::https://github.com/JKVijayaragavan/terraform-module.git"
    name = "jenkin_win"
    machine = "f1-micro"
    image = "windows-cloud/windows-2012-r2"
    zone = "us-west1-a"
}