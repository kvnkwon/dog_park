require 'spec_helper'

describe Relation do
  
  it { should validate_presence_of(:owner) }
  it { should validate_presence_of(:dog) }
  it { should belong_to(:owner) }
  it { should belong_to(:dog) }

end
