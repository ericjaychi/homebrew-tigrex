class Tigrex < Formula
    include Language::Python::Virtualenv

    desc "A Magic the Gathering CLI Tool"
    homepage "https://github.com/ericjaychi/tigrex"
    url "https://github.com/ericjaychi/tigrex/archive/v1.2.0.tar.gz"
    sha256 "4fa2bc917f169097d1a058dea02b5947e7ee58ac80f146c6ee7deaaf8de81800"
    version "1.2.0"

    depends_on "python"

    def install
        cd "source/python" do
            *Language::Python.setup_install_args(prefix)
        end
        virtualenv_install_with_resources
    end
end
