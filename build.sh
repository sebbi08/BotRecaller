#!/usr/bin/env bash
rm -rf BotRecaller_0.17.2
mkdir BotRecaller_0.17.2
cp -r ** BotRecaller_0.17.2
rm -rf BotRecaller_0.17.2/BotRecaller_0.17.2
rm BotRecaller_0.17.2/build.sh
zip -r BotRecaller_0.17.2.zip BotRecaller_0.17.2
rm /mnt/d/ModMyFactory_1.9.0_portable/mods/0.17/BotRecaller_0.17.2.zip
mv BotRecaller_0.17.2.zip /mnt/d/ModMyFactory_1.9.0_portable/mods/0.17
rm -rf BotRecaller_0.17.2