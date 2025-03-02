resource "aws_elasticache_cluster" "worker-demo" {
  cluster_id           = "worker-demo"
  engine               = "redis"
  engine_version       = "7.0"
  node_type            = "cache.t4g.micro"
  port                 = 11211
  num_cache_nodes      = 1
  subnet_group_name    = "default"
}