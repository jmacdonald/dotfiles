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

  # Download ctrlp plugin.
  unless Dir.exists? "#{Dir.home}/.vim/ctrlp.vim"
    exec "git clone https://github.com/kien/ctrlp.vim.git #{Dir.home}/.vim/ctrlp.vim"
  end

  # Download git plugin.
  unless Dir.exists? "#{Dir.home}/.vim/git-vim"
    exec "git clone git@github.com:jmacdonald/git-vim.git #{Dir.home}/.vim/git-vim"
  end
end

task :pry do
  # Symlink pryrc.
  File.symlink "#{File.dirname(__FILE__)}/pryrc", ENV['HOME']+'/.pryrc' 
end
