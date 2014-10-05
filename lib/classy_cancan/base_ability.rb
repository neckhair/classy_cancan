module ClassyCancan
  class BaseAbility
    extend Forwardable

    attr_reader :ability, :user

    def_delegators :@ability, :can, :cannot

    def initialize(ability, user)
      @ability = ability
      @user = user
    end

    def setup
    end
  end
end
