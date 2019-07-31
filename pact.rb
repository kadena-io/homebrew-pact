class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.1.0/pact-3.1.0-osx.tar.gz"
  sha256 "8de9502bf70da3eddf5d978f86c07ffd4ee6b14361e0f97ef85f81db361bceda"

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
