<%= @firearm.name %> <br>
<%= @firearm.firearm_type %> <br>
<%= @firearm.description %> <br>

<%= link_to  "Back", user_firearms_path %>
<%= link_to  "Edit Firearm", edit_user_firearm_path(@user, firearm) %>