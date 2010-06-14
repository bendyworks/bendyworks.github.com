namespace :showoff do

  desc 'Regenerate all showoff presentations'
  task :regenerate do
    require 'fileutils'
    %x[mkdir -p presentations]
    Dir['showoff/*'].each do |dir|
      entry = dir.sub(/showoff\//, '')
      %x[cd #{dir}; showoff static; mkdir static/file; cp *.css *.js static/file]
      %x[rm -rf presentations/#{entry}]
      %x[mv #{dir}/static presentations/#{entry}]
    end
  end

end

task :showoff => 'showoff:regenerate'
