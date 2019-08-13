class Tigrex < Formula
    include Language::Python::Virtualenv

    desc "A Magic the Gathering CLI Tool"
    homepage "https://github.com/ericjaychi/tigrex"
    url "https://github.com/ericjaychi/tigrex/archive/v1.2.0.tar.gz"
    sha256 "4fa2bc917f169097d1a058dea02b5947e7ee58ac80f146c6ee7deaaf8de81800"
    version "1.2.0"

    resource "fire" do
        url "https://files.pythonhosted.org/packages/5a/b7/205702f348aab198baecd1d8344a90748cb68f53bdcd1cc30cbc08e47d3e/fire-0.1.3.tar.gz"
        sha256 "c299d16064ff81cbb649b65988300d4a28b71ecfb789d1fb74d99ea98ae4d2eb"
    end

    resource "requests" do
        url "https://files.pythonhosted.org/packages/52/2c/514e4ac25da2b08ca5a464c50463682126385c4272c18193876e91f4bc38/requests-2.21.0.tar.gz"
        sha256 "502a824f31acdacb3a35b6690b5fbf0bc41d63a24a45c4004352b0242707598e"
    end

    resource "six" do
        url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
        sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
    end

    depends_on "python"

    def install
        virtualenv_install_with_resources
    end
end
