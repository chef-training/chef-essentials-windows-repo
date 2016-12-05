powershell_script 'Install IIS' do		
  code 'add-windowsfeature Web-Server'		
end		
		
template 'c:\inetpub\wwwroot\Default.htm' do		
  source 'Default.htm.erb'		
end		
		
service 'w3svc' do		
  action [:enable, :start]		
end
