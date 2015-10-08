directory '/home/isucon/rundeck' do
  user 'isucon'
  group 'isucon'
end

cookbook_file '/home/isucon/create_job.sh' do
  mode '0755'
  user 'isucon'
  group 'isucon'
end

cookbook_file '/home/isucon/exec_job.sh' do
  mode '0755'
  user 'isucon'
  group 'isucon'
end

cookbook_file '/home/isucon/delete_job.sh' do
  mode '0755'
  user 'isucon'
  group 'isucon'
end

cookbook_file '/home/isucon/rundeck/env.sh' do
  user 'isucon'
  group 'isucon'
end

cookbook_file '/home/isucon/rundeck/template_job.xml' do
  user 'isucon'
  group 'isucon'
end
