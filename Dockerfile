FROM vllm/vllm-openai:v0.28.0

# RUN apt-get update && \
#     apt-get install -y libgl1 && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*

RUN python3 -c \
    "import cv2; print('OpenCV:', cv2.__version__); print('Path:', cv2.__file__)"
    
RUN python3 -m pip install -U 'mineru[torch]>=4.0,<5' \
        --break-system-packages && \
    python3 -m pip cache purge

ENV MINERU_MODEL_SMALL_BACKEND=torch \
    MINERU_MODEL_VLM_ENGINE=vllm

RUN PYTHONUNBUFFERED=1 \
    HF_HUB_DISABLE_PROGRESS_BARS=0 \
    mineru-kit models download \
      --tier standard \
      --small-backend torch \
      --vlm-engine vllm \
      -s huggingface

ENTRYPOINT ["/bin/bash", "-c", "export MINERU_MODEL_SOURCE=local && exec \"$@\"", "--"]

