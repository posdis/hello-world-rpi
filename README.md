# hello-world-rpi

CLI版 Hello, World! プログラム — Raspberry Pi 対応

## 概要

`Hello, World!` を標準出力に表示するシンプルなCプログラムです。  
Raspberry Pi (ARM / AArch64) およびx86_64 Linux上でビルド・実行可能です。

## ファイル構成

| ファイル | 説明 |
|---|---|
| `hello.c` | メインソースコード |
| `Makefile` | ビルド設定（x86_64 / ARM64 / ARMhf対応） |
| `build_rpi.sh` | Raspberry Pi上でのネイティブビルドスクリプト |
| `test.sh` | テスト実行スクリプト |

## ビルド方法

### x86_64 Linux

```bash
make x86_64
./hello_x86_64
```

### Raspberry Pi (ネイティブビルド)

Raspberry Pi上で直接実行：

```bash
bash build_rpi.sh
./hello
```

### クロスコンパイル（ARM64 / ARMhf）

```bash
# ARM64 (Raspberry Pi 3/4/5 64bit OS)
make arm64
# ARMhf (Raspberry Pi 32bit OS)
make armhf
```

## テスト

```bash
bash test.sh
# or
make test
```

## 動作確認済み環境

- x86_64 Linux (Ubuntu 24.04)
- Raspberry Pi OS (64bit / 32bit)
