Rails.application.routes.draw do
  mount Rollback::Engine => "/rollback"
end
