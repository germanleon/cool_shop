Factory.define :user, :class => User do |f|
  f.email                   "auser@factory.com"
  f.password                "secret"
  f.password_confirmation   "secret"
end