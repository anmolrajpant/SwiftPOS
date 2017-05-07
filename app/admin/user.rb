ActiveAdmin.register User do
  permit_params :email, :name, :password, :password_confirmation

  index do
    column :role
    column :email
    actions
  end

  form do |f|
    f.inputs 'User' do
      #f.input :role
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end