#!/usr/bin/env bash

time ollama run llama2 "summarize this article $(cat long-article.txt)"

