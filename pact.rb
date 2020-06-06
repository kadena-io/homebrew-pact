class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.5.1/pact-3.5.1-osx.tar.gz"
  sha256 "3d710a03b18c1fd603e1a8975308d22c7961fcff5c9751dbca02e680b3a6f23e"

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
