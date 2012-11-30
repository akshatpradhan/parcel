class Ability
  include CanCan::Ability

    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  def initialize(user)
    can [:update, :destroy], Garden, :user_id => user.id
  end
end
