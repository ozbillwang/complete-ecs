[
  {
    "name": "nginx",
    "image": "nginx",
    "cpu": 0,
    "memory": 128,
    "portMappings": [
      {
        "containerPort": 80
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "${region}",
        "awslogs-group": "nginx",
        "awslogs-stream-prefix": "complete-ecs"
      }
    }
  }
]
