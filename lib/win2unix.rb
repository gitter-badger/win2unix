require "win2unix/version"

module Win2unix
  @@file_list = []

  def self.tidy path, ext = 'txt'
  	get_all_files path, ext
    @@file_list.each do |file|
      handle file
    end

    @@file_list.size
  end

  def self.get_all_files path, ext = 'txt'
  	Dir.glob("#{path}/*") do |file|
  	  if File.directory? file
  		  get_all_files file
  	  else
  		  if File.extname(file) == '.' + ext
          @@file_list.push file
        end
  	  end
  	end
  end

  def self.handle file
    origin = IO.read file
    handled = origin.gsub /\r\n/, "\n"

    f = File.new file, 'w'
    f.print handled
    f.close
  end
end

# end of this file.
