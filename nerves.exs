use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

pkg = :fom5000_rpi0w

config pkg, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  #  artifact_url: [
  #    "https://github.com/cthree/#{pkg}/releases/download/v#{version}/#{pkg}-v#{version}.tar.gz",
  #  ],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig"
  ],
  checksum: [
    "nerves_defconfig",
    "rootfs-additions",
    "linux-4.4.defconfig",
    "fwup.conf",
    "cmdline.txt",
    "config.txt",
    "post-createfs.sh",
    "VERSION"
  ]
