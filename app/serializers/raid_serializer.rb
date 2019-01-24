class RaidSerializer < ActiveModel::Serializer
  attributes :id, :boss_name, :time_remaining, :user, :editable

  def editable
    scope == object.user
  end
end
