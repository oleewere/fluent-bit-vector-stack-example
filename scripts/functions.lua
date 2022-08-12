function add_sample_k8s_annotation(tag, timestamp, record)
    kubernetes={}
    kubernetes_annotations={}
    if string.find(tag, ".json.") then
        kubernetes_annotations["fluent_bit_parser"]="json"
        kubernetes["annotations"]=kubernetes_annotations
        record["kubernetes"]=kubernetes
    else
        kubernetes_annotations["fluent_bit_parser"]="simple"
        kubernetes["annotations"]=kubernetes_annotations
        record["kubernetes"]=kubernetes
    end
    return 1, timestamp, record
end