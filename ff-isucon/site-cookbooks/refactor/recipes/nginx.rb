cookbook_file '/etc/nginx/nginx.conf' do
  notifies :reload, 'service[nginx]'
end

service 'nginx' do
  action [:enable]
  supports reload: true
end
