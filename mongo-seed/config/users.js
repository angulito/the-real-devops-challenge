db.createUser(
  {
    user: "challenge",
    pwd: "xyz123",
    roles: [ 
      { role: "readWrite", db: "the-real-devops-challenge" }
    ]
  }
)