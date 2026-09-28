---
layout: page
title: Research Experience
permalink: /projects/
section: Research
description: Research appointments, collaborative projects, and software for multimodal UAV evaluation, efficient perception, and edge deployment.
---
## Zayed University

<p class="project-meta">Research Assistant · February 2026–present · Remote</p>

Co-developed **MulRobBench**, an offline benchmark for safe and security-policy-compliant multimodal UAV agents.

- Co-defined protocol-conditioned UAV decision tasks and a 3,024-sample benchmark spanning 17 task-taxonomy nodes under visual degradation and noisy operator instructions.
- Built data generation, inference, and evaluation pipelines for 17 multimodal models, with semantic and structural diagnostics for safety-policy compliance.
- Co-first-authored the manuscript, submitted to *Applied Soft Computing*. [Preprint](https://arxiv.org/abs/2607.23870).

## Huawei MindSpore Open-Source Community

<p class="project-meta">Research Intern · February 2025–June 2025 · Remote</p>

Contributed to the **MindNLP** open-source project within the MindSpore ecosystem, implementing and fine-tuning Autoformer, BEiT, and ALBERT models.

- Worked on model integration, training stability, and cross-task evaluation across NLP and vision-language tasks.
- Improved the reproducibility and robustness of training workflows through open-source issue, review, and documentation processes.

## Automatic Inspection and Rescue Based on Drone Nest

<p class="project-meta">Research Intern · January 2024–July 2024 · Beijing Elite Intelligence Company and North China Institute of Science and Technology</p>

Developed UAV-based inspection services for open-pit mine scenarios, including water counting, conveyor-belt deviation detection, and truck tracking.

- Used DeepSORT and YOLOv8 for practical UAV inspection and rescue pipelines.
- Optimized PyTorch detection models and exported them through ONNX for real-time inference on edge devices.

## Baiyangdian Ecological IoT Monitoring System

<p class="project-meta">Undergraduate Researcher · June 2023–January 2024 · Hebei Province Key Scientific Research and Development Project, No. 19270318D</p>

Studied efficient object detection for mining trucks and low-altitude UAV monitoring under practical deployment constraints.

- Developed mining-truck detection using YOLOv7-tiny and Darknet, improving recognition accuracy by 2% with minimal FPS loss.
- Enhanced infrared-visible UAV object detection with YOLOv8, achieving 65% mAP at 30 FPS on a laptop while targeting edge deployment.

## Collaborative Research Projects

### National Undergraduate Innovation and Entrepreneurship Training

**Project lead**, 202411104021 (2024), working on UAV perception, automated inspection, and edge inference. Also participated in collaborating student projects 202511104021, 202511104025, and 202611104287.

### Multimodal Perception and Emergency Decision Research

**Research participant**, National Key R&D projects 2024YFC3016800 and 2024YFC3016805. Contributed to H2T-DEIM, TRIM, ManiSeg, visual episodic-memory diagnostics, and EmergUAV-Bench through model implementation, evaluation pipelines, feature analysis, and multimodal benchmarking.

### Intelligent Mine Inspection and Monitoring

**Research participant**, projects 2022YFC3004702-4 and HNCTR23-05. Related work includes mining-truck detection and tracking, standing-water counting, and conveyor-belt deviation detection for mine monitoring and industrial inspection.

### Multimodal Airborne Search-and-Rescue Equipment

**Research participant**, equipment development and demonstration involving infrared-visible UAV detection, personnel search and localization, and edge inference. Related regional programs include 202622003010002, 25350802D, and 2025011099.

### IoT Research Platforms and Collaborative Research Funds

**Research participant**, sensing, visual detection, and research software associated with Hebei and Qinghai IoT research platforms, the Fundamental Research Funds for the Central Universities, and a Hebei collaborative innovation project. Project identifiers: 21567693H, 2017-ZJ-Y21, 3142024038, 3142026024, and 262Y5403D.

## Selected Research Software

### Jetson VLM Lab

**2026** · [Code](https://github.com/4everWZ/jetson-vlm-lab)

A WSL-to-Jetson validation workflow with model configuration, artifact transfer, runtime launchers, a Python inference client, and benchmark logging. Validated text/image and single-frame smoke paths for MiniCPM-V and Gemma; camera and sustained-load validation remain outside the demonstrated scope.

### DEIM Jetson Acceleration Bench

**2026** · [Code](https://github.com/4everWZ/DEIM_Jetson_Acceleration)

Fixed-shape, batch-1 ONNX/TensorRT benchmarks with correctness gates, latency percentiles, engine size, and board-power measurements. Single-trial FP16 runs measured 89.48 FPS (N) and 48.45 FPS (M) at 640 × 640 with GPU-resident inputs. Selective INT8 was slower; full labeled COCO AP and repeated timing trials remain pending.

### Detector Feature Analysis and Granular Computing

**2025–2026** · [MC3WD-SEGBC](https://github.com/4everWZ/MC3WD-SEGBC) · [Clustering](https://github.com/4everWZ/GranularBall) · [Visualizer](https://github.com/4everWZ/Ultralytics-tSNE-Detection-Visualizer)

Tools for detector feature extraction, entropy-guided granular balls, geometric three-way decision, and per-object t-SNE analysis, with training, evaluation, ablation, and visualization exports. The related ManiSeg manuscript is listed on the [publications page]({{ '/publications/' | relative_url }}).

### Video-based Intelligent Alert System

**2025** · [Platform](https://github.com/4everWZ/Video-based-Intelligent-Alert-System) · [Inference service](https://github.com/4everWZ/Ultralytics_Flask_Inference_Service)

A multi-stream monitoring platform with open-vocabulary detection, alert tasks, event history, and multimodal question answering. A separate inference service supports people counting, perimeter intrusion detection, event records, and alarm clips from webcam and RTSP sources.

The [complete CV]({{ '/assets/CV.pdf' | relative_url }}) includes additional applied ML projects, model fine-tuning experiments, and open-source tools.
