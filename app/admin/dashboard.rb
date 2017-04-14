ActiveAdmin.register_page "Dashboard" do
    menu :priority => 1
    content :title => proc{ I18n.t("active_admin.dashboard") } do
        columns do
            panel "Recent Sales" do
                table_for Sale.order('id desc').limit(10) do
                    #column("State")   {|order| status_tag(order.state) }
                    column("Staff"){|sale| sale.user }
                    column("Customer"){|sale| sale.name }
                    column("Total"){|sale| sale.total }
                end
            end
        end
    end
end
