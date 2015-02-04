require 'spec_helper'

RSpec.describe ClassyCancan::BaseAbility do
  class Contact
  end

  class ContactAbility < ClassyCancan::BaseAbility
    def setup
      can :manage, Contact
      cannot :destroy, Contact
    end
  end

  class Ability
    include CanCan::Ability

    def initialize(user)
      ContactAbility.setup(self, user)
    end
  end

  subject(:ability) { Ability.new(double(:user)) }

  it 'can manage a contact' do
    expect(ability).to be_able_to :manage, Contact.new
  end

  it 'cannot destroy the contact' do
    expect(ability).to_not be_able_to :destroy, Contact.new
  end
end
