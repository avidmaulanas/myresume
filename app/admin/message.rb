ActiveAdmin.register Message do
  menu priority: 3

  permit_params :full_name, :email, :phone, :message

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :created_at

  form do |f|
    f.inputs "Message Details" do
      f.input :name
      f.input :email
      f.input :phone
      f.input :message
    end
    f.actions
  end

end
