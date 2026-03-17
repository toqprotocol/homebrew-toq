class ToqAT010alpha1 < Formula
  desc "Secure agent-to-agent communication protocol"
  homepage "https://toq.dev"
  license "Apache-2.0"
  version "0.1.0-alpha.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "23679f6124fe85005deef8eb14d8dc38df0f16d468257e556a37b2dae370216a"
    else
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "82709b508d22f09e5a9d16d5c376d68b8fc4fcc4af8149d0d41d1401b7391f90"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba4a4109266c85a8991c26ea5029417185277ce4fc9cf4d5a04531a94ca218bc"
    else
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06979efa2739e30ffa9343fcdc25ea32629d72f955aa2f1f50ae8a09b6f77a06"
    end
  end

  def install
    bin.install "toq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toq --version")
  end
end
