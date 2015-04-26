require 'spec_helper'

describe 'webpagetest-web::default' do
  context 'When all attributes are default' do

    cached(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'centos', version: '6.4')
      runner.converge(described_recipe)
    end

    before do
      stub_command("/usr/sbin/apache2 -t").and_return(true)
      stub_command("which php").and_return('/usr/bin/php')
      stub_command("/usr/sbin/httpd -t").and_return(true)
    end

    it 'converges successfully' do
      chef_run
    end

    it 'should include yum-repoforge recipe' do
      expect(chef_run).to include_recipe('yum-repoforge')
    end

    it 'should include apache2::mod_php5 recipe' do
      expect(chef_run).to include_recipe('apache2::mod_php5')
    end
  end
end
