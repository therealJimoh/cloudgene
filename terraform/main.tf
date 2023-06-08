

module "eks_cluster" {
  source = "./eks_cluster"

}

module "networking" {
  source = "./networking"
}
