FROM ghcr.io/ai-dock/comfyui:v2-cuda-12.1.1-base-22.04-v0.2.7

#  ❱❱  FRONTEND’i kur
RUN /opt/environments/python/comfyui/bin/pip install --no-cache-dir \
        comfyui-frontend-package==1.17.11

#  (İstersen kalıcı storage’ı ComfyUI’nin kendi dizinine bağla)
RUN ln -s /workspace/ComfyUI/models        /opt/ComfyUI/models  && \
    ln -s /workspace/ComfyUI/custom_nodes  /opt/ComfyUI/custom_nodes
