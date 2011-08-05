authorization do
    role :admin do
    has_permission_on [:levels], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:employees], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:root], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:home], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:user], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:user_sessions], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:skills], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
    has_permission_on [:skill_types], :to => [:index, :show, :edit, :new, :create, :update, :destroy]
  end
end