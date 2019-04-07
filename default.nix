with import <nixpkgs> {};

writeScriptBin "bkp" ''
  ${restic}/bin/restic -r b2:px-restic:xps15 --exclude={*.iso,.cabal,.cache,.cargo,.go,$HOME/tmp,$HOME/dwl,$HOME/vbox} backup /home/alex/
  ''
