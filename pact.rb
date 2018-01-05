class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.7/osx/pact-2.3.7.tar.gz"
  sha256 "5a175baa903b911465a4f2f58c5fe1f93adb9416aa00e2bc4772229c922c6bd7"


  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
