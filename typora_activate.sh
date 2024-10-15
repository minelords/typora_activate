#!/bin/bash

cd ~
git clone https://github.com/hazukieq/Yporaject.git
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo --version
cd ~/Yporaject
alias cargo=$HOME/.cargo/bin/cargo


cargo build
ls target/debug
cargo run

#拷贝target/debug的bin文件到/usr/share/typora目录
sudo cp target/debug/node_inject /usr/share/typora
cd /usr/share/typora
sudo chmod +x node_inject
sudo ./node_inject
cd ~/Yporaject/license-gen

#1.编译生成激活码的代码
cargo build

#2.生成激活码
cargo run


#output:
#    Finished dev [unoptimized + debuginfo] target(s) in 0.00s
#     Running `target/debug/license-gen`
#License for you: xxxxxx-xxxxxx-xxxxxx-xxxxxx

