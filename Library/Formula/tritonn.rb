require 'formula'

class Tritonn <Formula
  url 'http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Ftritonn%2F44474%2Ftritonn-1.0.12-mysql-5.0.87.tar.gz'
  homepage 'http://qwik.jp/tritonn/about_en.html'
  md5 'b7a8805ca1e6c31f515a5a5060b33098'

  depends_on 'pkg-config' => :build
  depends_on 'mecab'
  depends_on 'senna'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--with-senna", "--with-mecab",
                          "--mandir=#{man}", "--infodir=#{info}"
    system "make install"
  end
end
