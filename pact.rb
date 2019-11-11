class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.3.1/pact-3.3.1-osx.tar.gz"
  sha256 "249498f118b5abe456d9e8dc9b74f438a7f8ab406f736e2dd838b1c943ae18f5"

  depends_on "z3"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
