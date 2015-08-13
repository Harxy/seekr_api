require 'rails_helper'

describe Job, type: :model do
  it { is_expected.to belong_to :employer }
end
