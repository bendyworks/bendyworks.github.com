require 'rubygems'
require 'fsevent'

class RunShowoff < FSEvent
  attr_accessor :first_time

  def initialize
    super
    @first_time = true
  end

  def on_change(dirs)
    if @first_time
      puts "running rake"
      `rake showoff`
      @first_time = false
    else
      @first_time = true
    end
  end
end

watcher = RunShowoff.new
watcher.watch_directories %W(#{Dir.pwd}/showoff)
watcher.start
