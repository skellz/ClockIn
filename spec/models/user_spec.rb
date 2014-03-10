require 'spec-helper'

describe User do 
  it { should have_many(:clocks) }
  
  it { should valididate_presence_of(:email) }
  it { should valididate_presence_of(:fname) }
  it { should valididate_presence_of(:lname) }
end