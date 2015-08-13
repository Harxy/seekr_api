require 'rails_helper'

describe Employer, type: :model do
  it { is_expected.to have_many :jobs }
end
