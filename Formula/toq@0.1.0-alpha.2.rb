class ToqAT010alpha2 < Formula
  desc "Secure agent-to-agent communication protocol"
  homepage "https://toq.dev"
  license "Apache-2.0"
  version "0.1.0-alpha.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "66600253f6dfe80ebf2440709369366cbbc976d58bb042a3c50abd9c3b033959"
    else
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "442ca78302f1bcf156bed173252f69ffe3fc5e896c3b7cd5efd67e77cbffb621"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44147a5928b5e30282416e35bf19a90adfef05b1c6c1c00cc3633a1d73b4fe6c"
    else
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf7d94755e6fd4e9e2d4019b30a2e4c84e779bc516123480a61318616f07c376"
    end
  end

  def install
    bin.install "toq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toq --version")
  end
end
