require 'rails_helper'

RSpec.describe <%= @model.model %> do

  # Relations
  <%= @model.belong_to_relations %>
  <%= @model.has_one_relations %>
  <%= @model.has_many_relations %>

end
