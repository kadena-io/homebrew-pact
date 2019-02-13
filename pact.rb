class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.6.1/osx/pact-2.6.1.tar.gz"
  sha256 "4670575f74dffd98d4803d1216367c7f974cbc9f27b36bcbb92a262f17724cd5"

  depends_on "https://raw.githubusercontent.com/Homebrew/homebrew-core/a7e7806193f7605c7fef6110655911012d3f1eb3/Formula/z3.rb"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
