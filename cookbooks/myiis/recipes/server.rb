powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  not_if 'Get-WindowsFeature Web-Server'
end

directory 'C:\inetpub\wwwroot'

file 'C:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1>'
end

service 'w3svc' do
  action [:enable, :start]
end
