class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.3.1/pact-3.3.1-osx.tar.gz"
  sha256 "09904bab84f7c5d22bfeba252eefe9f8ee2efab9bc8b88e1a65451a6f9a545c7"

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
