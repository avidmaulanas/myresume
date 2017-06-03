ActiveAdmin.register LandingConfig do
  menu priority: 1

  permit_params :full_name, :job_title, :email, :about_me, :address, :phone

  index do
    selectable_column
    id_column
    column :full_name
    column :job_title
    column :email
    column :phone
    column :about_me
    column :address
    actions
  end

  filter :full_name
  filter :job_title
  filter :created_at

  form do |f|
    f.inputs "Landing Config Details" do
      f.input :full_name
      f.input :job_title
      f.input :email
      f.input :phone
      f.input :about_me
      f.input :address
    end
    f.actions
  end
end