require 'minitest/spec'

describe_recipe 'flask::default' do
  describe 'installers' do
    it 'installs the python-flask package' do
      package("python-flask").must_be_installed
    end
  end
end
