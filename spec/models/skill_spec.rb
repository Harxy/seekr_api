require 'rails_helper'

describe Skill, type: :model do
  it { is_expected.to belong_to :jobseeker }
end
