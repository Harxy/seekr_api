require 'rails_helper'

describe Jobseeker, type: :model do
  it { is_expected.to have_many :skills }
end
