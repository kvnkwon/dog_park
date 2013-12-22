require 'spec_helper'

describe Owner do
  it { should have_many(:relations) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email)}

  let(:blanks){[nil, '']}
  it { should have_valid(:first_name).when('Kevin', 'Robb', 'Jennifer') }
  it { should_not have_valid(:first_name).when(*blanks) }

  it { should have_valid(:last_name).when('Kwon', 'Stark', 'Lawrence') }
  it { should_not have_valid(:last_name).when(*blanks) }

  let(:invalid_emails){['user@mycom', 'hello', '.com', 'user.com']}
  it {should have_valid(:email).when('kevin@email.com') }
  it {should_not have_valid(:email).when(*invalid_emails) }

end
