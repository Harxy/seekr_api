require 'rails_helper'

describe Offer, type: :model do
  it { is_expected.to belong_to :jobseeker }
  it { is_expected.to belong_to :job }
end
