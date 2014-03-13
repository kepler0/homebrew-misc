require 'formula'

class libirecovery < Formula
  homepage 'https://github.com/Chronic-Dev/libirecovery.git'
  head 'https://github.com/Chronic-Dev/libirecovery.git', :branch => 'master'
  url 'https://github.com/Chronic-Dev/libirecovery/archive/8d2df80b4aac1b8d5d139b1fca6046fd62878d58.zip'
  sha1 '8d2df80b4aac1b8d5d139b1fca6046fd62878d58'
  
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  
  def install
    system "./autogen.sh"
    system "make"
  end
  
end
