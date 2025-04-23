FROM ghcr.io/ai-dock/comfyui:v2-cuda-12.1.1-base-22.04-v0.2.7

# Volümdeki modeller / custom_nodes’ı bağla
RUN ln -s /workspace/models        /opt/ComfyUI/models && \
    ln -s /workspace/custom_nodes  /opt/ComfyUI/custom_nodes && \
    ln -s /workspace/workflows     /opt/ComfyUI/workflows

# Gateway + şifreyi kapat
ENV SECURITY_MODE=none
ENV GATEWAY_ENABLE=false

# ComfyUI’yi 0.0.0.0:8188’de ayağa kaldır
ENV COMFYUI_HOST=0.0.0.0
ENV COMFYUI_PORT_HOST=8188
