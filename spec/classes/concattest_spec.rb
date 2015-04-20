require 'spec_helper'
describe 'concattest', :type => :class do
  let :facts do
    {
      :osfamily => 'Redhat',
      :concat_basedir => '/var/lib/puppet/concat',
    }
  end
  it { is_expected.to compile }
  it { is_expected.to contain_file('/var/lib/puppet/concat/_tmp_concattest/fragments/01_header').with_backup("puppet")}
end
