require 'FileUtils'

task :vim do
  # Delete the ~/.vimrc file, if it exists.
  if File.exists? ENV['HOME']+'/.vimrc' 
    File.delete ENV['HOME']+'/.vimrc' 
  end

  # Symlink vimrc.
  File.symlink "#{File.dirname(__FILE__)}/vimrc", ENV['HOME']+'/.vimrc' 

  # Create the .vim directory, if it doesn't already exist.
  FileUtils.mkdir "#{Dir.home}/.vim" unless Dir.exists? "#{Dir.home}/.vim"

  # Create the bundle directory, if it doesn't already exist.
  FileUtils.mkdir "#{Dir.home}/.vim/bundle" unless Dir.exists? "#{Dir.home}/.vim/bundle"

  # Install Vundle.
  exec "git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
end

task :pry do
  # Symlink pryrc.
  File.symlink "#{File.dirname(__FILE__)}/pryrc", ENV['HOME']+'/.pryrc' 
end
