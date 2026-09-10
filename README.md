# mineru_playground

# How to put mineru caches? 

```
brew install python@3.11 uv

uv venv --python 3.11

source .venv/bin/activate

uv pip install "mineru[all]==3.4.0"

# mineru-models-download -s huggingface -m pipeline

mkdir -p mineru-data/hf-cache
export HF_HOME="$PWD/mineru-data/hf-cache"
export MINERU_TOOLS_CONFIG_JSON="$PWD/mineru-data/mineru.json"

mineru-models-download \
  -s huggingface \
  -m all

mineru-models-download -s huggingface -m all


```

# Demo Dockerfile

```bash
# 基礎映像：vllm-openai v0.21.0（CUDA 13.0，支援 Volta~Blackwell 架構，Compute Capability 7.0~12.1）
# 若環境為 CUDA 12.9，改用下方註解的 -cu129 映像
FROM vllm/vllm-openai:v0.21.0
# FROM vllm/vllm-openai:v0.21.0-cu129

# 安裝 opencv 所需的 libgl，以及中文字型（Noto CJK）避免 PDF 渲染缺字
RUN apt-get update && \
    apt-get install -y \
        fonts-noto-core \
        fonts-noto-cjk \
        fontconfig \
        libgl1 && \
    fc-cache -fv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 安裝 MinerU 3.4.0（core + vllm extras，含 API server 依賴）
# 若需鎖定「任何 3.4.x」而非精確 3.4.0，可改為 'mineru[core]>=3.4.0,<3.5.0'
RUN python3 -m pip install -U 'mineru[core]==3.4.0' --break-system-packages && \
    python3 -m pip cache purge

# 下載模型並更新設定檔（預設走 HuggingFace，中國區可改 -s modelscope）
RUN /bin/bash -c "mineru-models-download -s huggingface -m all"

# Entry point：啟用本地模型設定後，執行傳入指令
ENTRYPOINT ["/bin/bash", "-c", "export MINERU_MODEL_SOURCE=local && exec \"$@\"", "--"]

```
