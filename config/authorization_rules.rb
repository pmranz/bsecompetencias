authorization do
  role :admin do
    has_permission_on [:levels], :to => [:index, :show]
  end
end