Rails.application.routes.draw do
  # home
get("/", { :controller => "pages", :action => "zebra"})

# Square
get("/square/new", { :controller => "game", :action => "square"})
get("/square/result", { :controller => "game", :action => "square_result"})

# Square Root
get("/square_root/new", { :controller => "game", :action => "root"})
get("/square_root/result", { :controller => "game", :action => "root_result"})

# Payment
get("/payment/new", { :controller => "game", :action => "payment"})
get("/payment/result", { :controller => "game", :action => "payment_result"})

# Random
get("/random/new", { :controller => "game", :action => "random"})
get("/random/result", { :controller => "game", :action => "random_result"})
end
