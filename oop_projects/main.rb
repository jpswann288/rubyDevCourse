require_relative './crud'

users = [
  { username: "jason", password: "password1" },
  { username: "coya", password: "password2" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users