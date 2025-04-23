FROM ghcr.io/ai-dock/comfyui:v2-cuda-12.1.1-base-22.04-v0.2.7

# Gereksiz servisleri kapat
ENV CF_QUICK_TUNNELS=false \
    WEB_ENABLE_AUTH=false \
    SERVICEPORTAL_PORT_HOST=0

# Kalıcı diski ComfyUI’nin beklediği yere bağla
# /workspace/ComfyUI  →  /opt/ComfyUI
RUN rm -rf /opt/ComfyUI && \
    ln -s /workspace/ComfyUI /opt/ComfyUI
