class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.0.1/pact-3.0.1-osx.tar.gz"
  sha256 "58f4c0e77514219a5f933a403a04e0b88fe930d10267b0f1590efca14aa4db46"

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
