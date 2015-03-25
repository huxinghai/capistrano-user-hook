# capistrano-user-hook
server user manage deploy using switch user execute!!

using

```RUBY
  #指定role 用户prod执行
  set :root_users, {prod: [:unicorn_roles, :bundle_roles, :assets_roles, :release_roles]}
```

OR

```RUBY
  #所有 role 多用prod 执行
  set :root_user, :prod
```

