from transformers import pipeline
import gradio as gr

model=pipeline("summarization")

def predict(prompt):
    summary=model(prompt)[0]['summary_text']
    return summary


iface = gr.Interface(fn=predict, inputs="text", outputs="text")
iface.launch()
