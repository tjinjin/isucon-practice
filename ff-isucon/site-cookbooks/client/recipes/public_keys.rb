cookbook_file '/home/isucon/.ssh/authorized_keys' do
  mode '0600'
  user 'isucon'
  group 'isucon'
end
