namespace :showoff do

  desc 'Regenerate all showoff presentations'
  task :regenerate do
    require 'fileutils'
    %x[mkdir -p presentations]
    Dir['showoff/*'].each do |dir|
      entry = dir.sub(/showoff\//, '')
      %x[cd #{dir}; showoff static; mkdir static/file; cp *.css *.js **/*.png static/file]
      %x[rm -rf presentations/#{entry}]
      %x[cp -R #{dir}/static presentations/#{entry}]
      # %x[sed -i '' -e 's/src="file:.*[^"]*\.\.\(.*\)$/src="..\1/g' presentations/**/*.html]
      Dir['presentations/**/*.html'].each do |filename|
        content = File.read(filename)
        content = content.gsub(/src="file:[^\"]*\.\//, 'src="./')
        File.open(filename, 'w') do |f|
          f.print content
        end
      end
    end
  end

end

task :showoff => 'showoff:regenerate'
