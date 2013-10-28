require 'spec_helper'

describe 'ruby::1_9_3_p374' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should contain_ruby__version('1.9.3-p374')
  end
end

