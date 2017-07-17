ActiveAdmin.register User do
  permit_params :role_id, :email, :name, :password, :password_confirmation

  index do
    column :role
    column :email
    actions
  end

  form do |f|
    f.inputs 'User' do
      f.input :role, input_html: {selected: user.role}
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end