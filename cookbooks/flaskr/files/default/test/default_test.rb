require 'minitest/spec'

describe_recipe 'flaskr::default' do
  describe 'flaskr' do
    it 'creates a directory structure in /var/flaskr/data' do
      directory("/var/flaskr/data").must_exist.with(:owner, "vagrant")
    end
    it 'creates a file in /var/flaskr/data' do 
      file("/var/flaskr/flaskr_config.py").must_exist.with(:owner, "vagrant")
    end
    it 'populates the template with the correct value' do 
      file("/var/flaskr/flaskr_config.py").must_include node.flaskr.username
    end
  end
end
