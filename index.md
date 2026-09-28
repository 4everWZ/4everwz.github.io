---
layout: default
title: Home
---
<section class="profile-intro" aria-labelledby="profile-name">
  <img
    class="profile-photo"
    src="{{ '/assets/images/profile.jpg' | relative_url }}"
    alt="Portrait of Weizheng Wang"
    width="192"
    height="192"
    fetchpriority="high">

  <div class="profile-summary">
    <h1 id="profile-name">Weizheng Wang <span lang="zh">王维政</span></h1>
    <p class="profile-role">Master's student in Artificial Intelligence and Machine Learning at the University of Adelaide</p>
    <p>I study multimodal UAV decision evaluation, visual memory, efficient computer vision, and edge deployment. I am also a remote Research Assistant at Zayed University, working on protocol-conditioned evaluation of multimodal UAV agents.</p>
    <p>Before Adelaide, I completed a B.Eng. in Computer Science and Technology at North China Institute of Science and Technology, where I worked on UAV monitoring, object detection, and practical perception systems.</p>
    <p class="research-interests"><strong>Research interests:</strong> multimodal evaluation, visual episodic memory, efficient vision, structured pruning, and UAV/edge AI.</p>
    <ul class="profile-links" aria-label="Profile links">
      <li><a href="mailto:weizheng.wang.cs@gmail.com">Email</a></li>
      <li><a href="{{ '/assets/CV.pdf' | relative_url }}">CV</a></li>
      <li><a href="{{ '/assets/CV-zh.pdf' | relative_url }}" lang="zh">中文简历</a></li>
      <li><a href="https://github.com/4everWZ">GitHub</a></li>
      <li><a href="https://www.linkedin.com/in/weizheng-wang-720232372">LinkedIn</a></li>
    </ul>
  </div>
</section>

<div class="home-index">
  <section class="index-section index-publications" aria-labelledby="selected-publications">
    <div class="section-heading">
      <h2 id="selected-publications">Selected Publications</h2>
      <a href="{{ '/publications/' | relative_url }}">View all</a>
    </div>
    <ol class="academic-list publication-preview-list">
      <li>
        <p class="item-title">TRIM: Dual-Budget Structured Pruning with Information-Modulated Saliency for CNN, Transformer, and Mamba Vision Models</p>
        <p><strong>W. Wang<sup>†</sup></strong>, J. Wu<sup>†</sup>, Q. Tian, and L. Tian. Submitted to <em>IEEE ICASSP 2027</em>, 2026. <a href="https://github.com/4everWZ/TRIM">Repository</a></p>
      </li>
      <li>
        <p class="item-title">When Retrieval Is Not Binding: A Diagnostic Benchmark for Visual Episodic Memory</p>
        <p><strong>W. Wang<sup>†</sup></strong>, J. Wu<sup>†</sup>, L. Tian, and Q. Tian. Submitted to <em>IEEE ICASSP 2027</em>, 2026. <a href="https://github.com/4everWZ/retrieval-not-binding">Repository</a></p>
      </li>
      <li>
        <p class="item-title">A Lightweight Thermal Denoising and Occlusion-Robust Infrared Detection Model for Substation Equipment</p>
        <p>J. Wu<sup>†</sup>, <strong>W. Wang<sup>†</sup></strong>, Y. Niu, X. Shi, and L. Tian. <em>IEEE ICIP</em>, 2026. <a href="https://github.com/4everWZ/PO-YOLO">Code</a></p>
      </li>
    </ol>
    <p class="note"><sup>†</sup> Equal contribution. Submitted manuscripts are not yet accepted.</p>
  </section>

  <section class="index-section index-updates" aria-labelledby="recent-updates">
    <div class="section-heading">
      <h2 id="recent-updates">Updates</h2>
    </div>
    <ul class="compact-academic-list">
      <li><time datetime="2026">2026</time><span>Submitted TRIM, visual episodic-memory diagnostics, ManiSeg, and EmergUAV-Bench to <em>IEEE ICASSP 2027</em>.</span></li>
      <li><time datetime="2026">2026</time><span>Released the <a href="https://arxiv.org/abs/2607.23870">MulRobBench preprint</a>; submitted to <em>Applied Soft Computing</em>.</span></li>
      <li><time datetime="2026-02">2026</time><span>Joined Zayed University as a remote Research Assistant in February.</span></li>
    </ul>
  </section>

  <section class="index-section index-experience" aria-labelledby="research-experience">
    <div class="section-heading">
      <h2 id="research-experience">Research Experience</h2>
      <a href="{{ '/projects/' | relative_url }}">View all</a>
    </div>
    <ol class="academic-list experience-preview-list">
      <li>
        <p class="item-title">Zayed University</p>
        <p class="item-meta">Research Assistant · February 2026–present · Remote</p>
        <p>Co-developed MulRobBench: 3,024 UAV decision samples across 17 task-taxonomy nodes, with evaluation pipelines for 17 multimodal models.</p>
      </li>
      <li>
        <p class="item-title">Huawei MindSpore Open-Source Community</p>
        <p class="item-meta">Research Intern · February–June 2025</p>
        <p>Contributed to MindNLP model integration and fine-tuning workflows for Autoformer, BEiT, and ALBERT, with attention to training stability and reproducibility.</p>
      </li>
      <li>
        <p class="item-title">Automatic Inspection and Rescue Based on Drone Nest</p>
        <p class="item-meta">Research Intern · January–July 2024</p>
        <p>Developed UAV inspection pipelines using DeepSORT and YOLOv8, with ONNX export for real-time edge inference.</p>
      </li>
    </ol>
  </section>

  <section class="index-section index-education" aria-labelledby="education">
    <div class="section-heading">
      <h2 id="education">Education</h2>
    </div>
    <ul class="compact-academic-list compact-academic-list--stacked">
      <li>
        <time>Sep. 2025–Sep. 2026 (expected)</time>
        <span><strong>University of Adelaide</strong><br>Master of Artificial Intelligence and Machine Learning</span>
      </li>
      <li>
        <time>2021–2025</time>
        <span><strong>North China Institute of Science and Technology</strong><br>B.Eng. in Computer Science and Technology, GPA 90.84/100</span>
      </li>
    </ul>
  </section>

  <section class="index-section index-honors" aria-labelledby="selected-honors">
    <div class="section-heading">
      <h2 id="selected-honors">Selected Honors</h2>
      <a href="{{ '/awards/' | relative_url }}">View all</a>
    </div>
    <ul class="compact-academic-list">
      <li><time datetime="2025">2025</time><span>University of Adelaide Global Citizens 30% International Scholarship</span></li>
      <li><time datetime="2024">2024</time><span>Principal Investigator, National Undergraduate Innovation Training Program</span></li>
      <li><time datetime="2023">2023</time><span>Second Prize, Challenge Cup Science and Technology Invention and Creation Track</span></li>
    </ul>
  </section>
</div>
