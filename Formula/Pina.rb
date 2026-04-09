  class Pina < Formula
    desc "Terminal-based tool for managing your side projects"
    homepage "https://github.com/yifeng-sun/pina"
    url "https://registry.npmjs.org/@yifengsun/pina/-/pina-0.1.1.tgz"
    sha256 "9821d31bf9af975fedf80fcd82019ad00a1ceb37fe249066e4bf7020b9e58b52"
    license "MIT"

    depends_on "node"

    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/pina --version")
    end
  end