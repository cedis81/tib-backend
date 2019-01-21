class RaidSerializer < ActiveModel::Serializer
  attributes :id, :boss_name, :time_remaining
end
