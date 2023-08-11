job "nginx-jovan-test" {
  datacenters = ["dc1"]
  type = "service"
  constraint {
    attribute = "${attr.kernel.name}"
    value = "linux"
  }
  group "http-jovan" {
    network {
      mode = "host"
      port "http" { 
      	to = 80
      }
    }
    count = 1

    service {
      name = "nginx-webserver-jovan"
      port = "http"
      check {
        name     = "alive"
        type     = "http"
        path     = "/"
        interval = "10s"
        timeout  = "2s"
      }
    }

    restart {
      attempts = 2
      interval = "30m"
      delay = "15s"
      mode = "fail"
    }

    task "nginx-jovan-test" {
      driver = "docker"
      config {
        image = "git-registry.de.geis-group.net/webserver:latest"
        ports =	["http"]
      }
      resources {
        cpu = 384
        memory = 128
      }
    }
  }
}
