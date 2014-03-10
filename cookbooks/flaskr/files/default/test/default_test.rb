class FlaskrSpec < MiniTest::Chef::Spec

  describe 'flaskr::default' do
    subject { ChefSpec::Runner.new.converge(described_recipe) }

    it 'installed git' do
      package("git").must_be_installed
    end
  end
end
