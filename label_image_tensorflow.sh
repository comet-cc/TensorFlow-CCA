#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"
export TF_PYTHON_VERSION=3.11
bazel build -c opt --config=elinux_aarch64 ./label_image --jobs=5 --local_cpu_resources=8 --verbose_failures
