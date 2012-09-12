require 'FileUtils'

task :vim do
  # Symlink vimrc.
  File.symlink "#{File.dirname(__FILE__)}/vimrc", ENV['HOME']+'/.vimrc' 

  # Download ctrlp plugin.
  FileUtils.mkdir_p "#{Dir.home}/.vim/bundle" unless Dir.exists? "#{Dir.home}/.vim/bundle"
  exec "git clone https://github.com/kien/ctrlp.vim.git #{Dir.home}/.vim/bundle/ctrlp.vim" unless Dir.exists? "#{Dir.home}/.vim/bundle/ctrlp.vim"
end
