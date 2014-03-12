require 'minitest/spec'

describe_recipe 'flaskr::default' do
  describe 'flaskr' do
    it 'creates a directory structure in /var/flaskr/data' do
      directory("/var/flaskr/data").must_exist.with(:owner, "vagrant")
    end
  end
end
