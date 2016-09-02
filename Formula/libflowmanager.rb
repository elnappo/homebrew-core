class Libflowmanager < Formula
  desc "Flow-based measurement tasks with packet-based inputs"
  homepage "http://research.wand.net.nz/software/libflowmanager.php"
  url "http://research.wand.net.nz/software/libflowmanager/libflowmanager-2.0.5.tar.gz"
  sha256 "00cae0a13ac0a486a6b8db2c98a909099fd22bd8e688571e2833cf3ee7ad457e"

  bottle do
    cellar :any
    revision 1
    sha256 "4421ac86a4b78491c9fc51f805863a21a0385a62f88515d49d29de84b8e64583" => :el_capitan
    sha256 "45d7fb971906b668c6ee8c23ecc0506f5f3cce5a37bd17e9120bc3f0977c1ed2" => :yosemite
    sha256 "14af86bbbe2cf139560f84263f1de58a2740dd80fdab5da91e54135cbb841d29" => :mavericks
    sha256 "364346d02730794ebff7338a3a7adf17f3ab8c22974894542f9ffa7d4cc7aba8" => :mountain_lion
  end

  depends_on "libtrace"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
