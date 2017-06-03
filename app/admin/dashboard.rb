ActiveAdmin.register_page "Dashboard" do

  menu priority: 0, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Messages" do
          render partial: "admin/messages/index", locals: { messages: Message.last(10) }
        end
      end
    end
  end # content
end
