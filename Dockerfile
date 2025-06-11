FROM vllm/vllm-openai:latest

ENTRYPOINT python3 -m vllm.entrypoints.openai.api_server \
    --port ${PORT:-8000} \
    --model ${MODEL_NAME:-mistralai/Codestral-22B-v0.1} \
    ${QUANTIZATION:+--quantization "$QUANTIZATION"} \
    ${REVISION:+--revision "$REVISION"}
