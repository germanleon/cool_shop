Dado /^un usuario con email "([^\"]*)"$/ do |email|
  Factory(:user, :email => email)
end

Cuando /^inicio sesión con email "([^\"]*)"$/ do |email|
  fill_in("Email", :with => email)
  fill_in("Contraseña", :with => "secret")
  click_button("Acceder")
end