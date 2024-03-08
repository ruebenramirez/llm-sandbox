#!/usr/bin/env bash

set -x


download_model() {

    model=$1
    continue_loop=true

    while $continue_loop; do

        ollama pull $model

        # if downloaded, end the loop
        if [[ $(ollama list | grep $model | wc -l) -gt 0 ]]; then
            continue_loop=false
        fi
    done
}

download_model llama2
download_model phi
download_model mistral:instruct
download_model mistral:latest
