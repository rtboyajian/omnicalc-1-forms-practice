Rails.application.routes.draw do

get("/", {controller: calculator, :action render_homepage})

get("/square/new"), {controller: calculator, :action calculate_square})

get("/square_root/new"),{controller: calculator, :action calculate_root})

get("/payment/new"),{controller: calculator, :action calculate_payment})

get("/random/new"),{controller: calculator, :action generate_rand})
end

