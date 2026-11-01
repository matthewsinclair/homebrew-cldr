# Canonical template. tools/formula renders it for a tag; never fill these in by hand.
class Cldr < Formula
  desc "Re-runnable renderer for a plain-text time journal"
  homepage "https://github.com/matthewsinclair/cldr"
  url "https://github.com/matthewsinclair/cldr/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6eaf1c5036b975882f27b07e621461eca54f164a3018bfd9d29875cfed5cc661"
  license "MIT"
  head "https://github.com/matthewsinclair/cldr.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    pkgshare.install "examples/config.toml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cldr --version")
    (testpath/"config.toml").write("[journal]\n")
    assert_match "config", shell_output("#{bin}/cldr --config #{testpath}/config.toml paths")
  end
end
