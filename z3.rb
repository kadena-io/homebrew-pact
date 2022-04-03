class Z3 < Formula
  desc "High-performance theorem prover, pact binary distribution"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/kadena-io/pact/releases/download/v4.1/z3-4.8.10-osx.tar.gz"
  sha256 "8db49ec89614708874c68f7b72e7704108beebbb416780f5e09db18f6cb032eb"
  license "MIT"

  def install
    bin.install "z3"
  end

  test do
    system "#{bin}/z3", "-version"
  end
end
