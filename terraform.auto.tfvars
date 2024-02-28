bitbucket_runners = {
  thanh-runner-1 = {
    runner_resources = {
      limits = {
        cpu    = 1
        memory = "4G"
      }
      requests = {
        cpu    = 1
        memory = "1G"
      }
    }
    dind_resources = {
      limits = {
        cpu    = 1
        memory = "4G"
      }
      requests = {
        cpu    = 1
        memory = "1G"
      }
    }
  }
}

k8s_namespace = "bitbucket-runner-1"