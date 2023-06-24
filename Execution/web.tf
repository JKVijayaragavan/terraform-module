module "web" {
    source = "git::https://github.com/JKVijayaragavan/terraform-module.git"
    name = "jkhost"
    machine = "f1-micro"
    zone = "us-west1-a"
    image = "windows-cloud/windows-2012-r2"
}

module "web1" {
    source = "git::https://github.com/JKVijayaragavan/terraform-module.git"
    name = "jenkinhost"
    machine = "f1-micro"
    zone = "us-west1-a"
    image = "windows-cloud/windows-2012-r2"
    network = "vpcnetwork"
}
