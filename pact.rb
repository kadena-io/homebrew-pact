class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.4/osx/pact-2.3.4.tar.gz"
  sha256 "d6296cb805760e093912d96557bd6b6740a4064bb573a638cc0a08bf16ef2eef"


  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
