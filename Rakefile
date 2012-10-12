require 'FileUtils'

task :vim do
  # Symlink vimrc.
  File.symlink "#{File.dirname(__FILE__)}/vimrc", ENV['HOME']+'/.vimrc' 

  # Download ctrlp plugin.
  FileUtils.mkdir "#{Dir.home}/.vim" unless Dir.exists? "#{Dir.home}/.vim"
  exec "git clone https://github.com/kien/ctrlp.vim.git #{Dir.home}/.vim/ctrlp.vim" unless Dir.exists? "#{Dir.home}/.vim/ctrlp.vim"

  # Download git plugin.
  FileUtils.mkdir "#{Dir.home}/.vim" unless Dir.exists? "#{Dir.home}/.vim"
  exec "git clone git@github.com:jmacdonald/git-vim.git #{Dir.home}/.vim/git-vim" unless Dir.exists? "#{Dir.home}/.vim/git-vim"
end
