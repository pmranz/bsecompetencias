authorization do
  role :admin do
    has_permission_on [:levels], :to => [:index, :show]
    has_permission_on [:employees], :to => [:index, :show, :edit, :new, :create, :update, :destroye]
  end
end