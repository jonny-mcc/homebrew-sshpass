class Sshpass < Formula
  desc "Tool for non-interactivly performing password authentication with SSH"
  homepage "https://sourceforge.net/projects/sshpass/"
  url "https://sourceforge.net/projects/sshpass/files/sshpass/1.10/sshpass-1.10.tar.gz"
  sha256 "ad1106c203cbb56185ca3bad8c6ccafca3b4064696194da879f81c8d7bdfeeda"
  license "GPL-2.0-or-later"

    def install
      system "./configure", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
  
    test do
      system "sshpass"
    end
  end
