cookbook_file '/etc/mysql/mysql.cnf' do
  notifies :restart, 'service[mysql]'
end

service 'mysql' do
  action [:enable]
  supports restart: true
end
