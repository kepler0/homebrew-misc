require 'formula'

class Libirecovery < Formula
  homepage 'https://github.com/Chronic-Dev/libirecovery.git'
  head 'https://github.com/Chronic-Dev/libirecovery.git', :branch => 'master'
  url 'https://github.com/Chronic-Dev/libirecovery/archive/8d2df80b4aac1b8d5d139b1fca6046fd62878d58.zip'
  sha1 '90c1393b927d4e90b893befd17d33611dffbbce2'
  
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'libusb'
  
  def install
    system "./autogen.sh"
    system "make", "install"
  end
  
end
