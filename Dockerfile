FROM ghcr.io/ai-dock/comfyui:v2-cuda-12.1.1-base-22.04-v0.2.7
# Gerekli custom-nodes
RUN git clone --depth 1 https://github.com/rgthree/ComfyUI-RGthree \
        /opt/ComfyUI/custom_nodes/ComfyUI-RGthree \
 && git clone --depth 1 https://github.com/Fannovel16/comfyui_controlnet_aux \
        /opt/ComfyUI/custom_nodes/comfyui_controlnet_aux

# Workflow'u otomatik yükle
COPY workflows/ /workspace/workflows/
ENV WORKFLOW_PATH=/workspace/workflows/my_workflow.json
