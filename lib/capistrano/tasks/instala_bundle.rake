namespace :setup do

desc "Instala bundle en remoto"
 task :instala_bundle do
 on roles(:all) do
 execute "gem install bundler"
 end
 end
end