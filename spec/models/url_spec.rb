require 'spec_helper'

describe Url do
  it { should respond_to(:source) }
  it { should respond_to(:mini_link) }
 
  it { should validate_presence_of(:source) }

end
