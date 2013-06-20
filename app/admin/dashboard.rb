ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
     # div :class => "blank_slate_container", :id => "dashboard_default_message" do
         #span :class => "blank_slate" do
         #span I18n.t("active_admin.dashboard_welcome.welcome")
         #small I18n.t("active_admin.dashboard_welcome.call_to_action")
      #end
    #end

     
    section "Recently added clubs" do
        table_for Club.order("created_at desc").limit(5) do
            column :name do |club|
                link_to club.name, admin_club_path(club)
            end
            column :created_at
        end
        strong { link_to "View All Clubs", admin_clubs_path }
    end

    
  end # content
end
