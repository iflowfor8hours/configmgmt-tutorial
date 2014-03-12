require 'minitest/spec'

describe_recipe 'flaskr::default' do
  describe 'flaskr' do
    describe 'directories' do
      it 'for the database' do
        directory("/var/flaskr/data").must_exist.with(:owner, "vagrant")
      end
      it 'for logs' do
        directory("/var/log/flaskr").must_exist.with(:owner, "vagrant")
      end
    end
  end
  describe 'configuration file' do
    it 'is created' do
      file("/var/flaskr/flaskr_config.py").must_exist.with(:owner, "vagrant")
    end
    it 'contains the username' do
      file("/var/flaskr/flaskr_config.py").must_include node.flaskr.username
    end
    it 'contains the address to listen' do
      file("/var/flaskr/flaskr_config.py").must_include node.flaskr.listen_address
    end
  end
end
