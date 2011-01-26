require 'formula'

class Senna <Formula
  url 'http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fsenna%2F46945%2Fsenna-1.1.5.tar.gz'
  homepage 'http://qwik.jp/senna/FrontPage.html'
  md5 'd4a9509e77100c30f05cb058b4adfeab'

  depends_on 'pkg-config' => :build
  depends_on 'mecab'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
