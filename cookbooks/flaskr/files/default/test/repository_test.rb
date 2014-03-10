class FlaskrRepositorySpec < MiniTest::Chef::Spec

  describe 'flaskr::repository' do
    subject { ChefSpec::Runner.new.converge(described_recipe) }

    it 'checks out the flask repo' do
      directory("/opt/flask").must_exist
    end
  end
end
