require "win2unix/version"

module Win2unix
  @@file_list = []

  def self.tidy path, ext = 'txt'
  	getAllFiles path, ext
    @@file_list.each do |file|
      handle file
    end

    @@file_list.size
  end

  def self.getAllFiles path, ext = 'txt'
  	Dir.glob("#{path}/*") do |file|
  	  if File.directory? file
  		  getAllFiles file
  	  else
  		  if File.extname(file) == '.' + ext
          @@file_list.push file
        end
  	  end
  	end
  end

  def self.handle file
    p file
  end
end
