module ClassyCancan
  class BaseAbility
    extend Forwardable

    attr_reader :ability, :user

    def_delegators :@ability, :can, :cannot

    def initialize(ability, user)
      @ability = ability
      @user = user
    end

    def self.setup(ability, user)
      new(ability, user).setup
    end

    def setup
      fail 'You have to define a setup method in your ClassyCancan Ability class.'
    end
  end
end
