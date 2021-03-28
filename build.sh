#!/usr/bin/env bash

main() {
	need_cmd curl
	need_cmd grep
	need_cmd cut
	need_cmd xargs
	need_cmd chmod
	build
}

build() {

  CDIR="$(cd "$(dirname "$0")" && pwd)"
  build_dir=$CDIR/build

  while getopts A:K:q option
  do
    case "${option}"
    in
      q) QUIET=1;;
      A) ARCH=${OPTARG};;
      K) KERNEL=${OPTARG};;
    esac
  done

  rm -rf $build_dir
  mkdir -p $build_dir

  for f in *prerun.sh
  do
      cp $CDIR/$f $build_dir/
  done

  cd $build_dir

  # The logic is from https://github.com/ajeetdsouza/zoxide/blob/06062e92ca591a3758f2d69c9b1cd772a6a378b0/install.sh

  echo "Downloading zoxide..."
  _cputype="x86_64"
  _clibtype="musl"
  _ostype=unknown-linux-$_clibtype
  _target="$_cputype-$_ostype"
  rm -rf "zoxide-$_target"
  curl -s https://api.github.com/repos/ajeetdsouza/zoxide/releases/latest | grep "browser_download_url" | cut -d '"' -f 4 | grep "$_target" | xargs -n 1 curl -LJO
  mv "zoxide-$_target" "zoxide"
  chmod +x zoxide

}

cmd_chk() {
  >&2 echo Check "$1"
	command -v "$1" >/dev/null 2>&1
}

need_cmd() {
  if ! cmd_chk "$1"; then
    error "need $1 (command not found)"
    exit 1
  fi
}

main "$@" || exit 1