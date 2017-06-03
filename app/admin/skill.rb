ActiveAdmin.register Skill do
  menu priority: 2

  permit_params :title, :score

  index do
    selectable_column
    id_column
    column :title
    column :score
    actions
  end

  filter :title

  form do |f|
    f.inputs "Skill Details" do
      f.input :title
      f.input :score
    end
    f.actions
  end
end