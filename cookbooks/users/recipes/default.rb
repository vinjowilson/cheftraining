serach ('logins', '*:*').each do |user_data|
	user "#{user_data['id']}" do
		home "#{user_data['home']}"
		shell "#{user_data['shell']}"
		password '$1$vtmcsPcd$zJBE4g5QHp5nKw5O9B10v/'
	end
	directory "#{user_data['home']}" do
        owner "#{user_data['owner']}"
        group "#{user_data['group']}"
        mode '0755'
		action :create
	end
end
