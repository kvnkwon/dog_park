require 'spec_helper'

describe Dog do
  
  it { should have_many(:relations) }
  it { should validate_presence_of(:name) }

  let(:blanks){[nil, '']}
  it { should have_valid(:name).when('Sammy', 'Snoopy', 'The Destroyer') }
  it { should_not have_valid(:name).when(*blanks) }

end
