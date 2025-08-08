Rails.application.routes.draw do

get("/", {:controller => "calculator", :action => "square_form"})

get("/square/new", {:controller => "calculator", :action => "square_form"})
get("/square/results", {:controller => "calculator", :action => "calculate_square"})


get("/square_root/new",{:controller => "calculator", :action => "root_form"})
get("/square_root/results",{:controller => "calculator", :action => "calculate_root"})

get("/payment/new",{:controller => "calculator", :action => "payment_form"})
get("/payment/results",{:controller => "calculator", :action => "calculate_payment"})

get("/random/new",{:controller => "calculator", :action => "random_form"})
get("/random/results",{:controller => "calculator", :action => "generate_rand"})
end
