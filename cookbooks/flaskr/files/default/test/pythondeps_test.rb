class FlaskrSpec < MiniTest::Chef::Spec

  describe 'flaskr::pythondeps' do
    subject { ChefSpec::Runner.new.converge(described_recipe) }

    it 'installed pip, the python package manager' do
      package("python-pip").must_be_installed
    end
  end
end
