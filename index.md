---
layout: default
title: Home
---
<section class="hero-card">
  <div class="hero-aside">
    <img src="{{ '/assets/images/profile.jpg' | relative_url }}" alt="Portrait of Weizheng Wang">
    <div class="hero-identity">
      <p class="eyebrow">Profile</p>
      <h2 class="profile-name-en">Weizheng Wang</h2>
      <p class="profile-name-native">王维政</p>
      <p class="profile-brief">🎓 University of Adelaide · AI &amp; ML</p>
      <p class="profile-brief profile-brief--subtle">📍 Adelaide</p>
    </div>

    <ul class="profile-links">
      <li><a href="{{ '/assets/CV.pdf' | relative_url }}">📄 CV</a></li>
      <li><a href="mailto:weizheng.wang.cs@gmail.com">✉️ Mail</a></li>
      <li><a href="https://github.com/4everWZ">💻 GitHub</a></li>
      <li><a href="https://www.linkedin.com/in/weizheng-wang-720232372">🔗 LinkedIn</a></li>
      <li><a href="https://www.kaggle.com/volantchantal">📊 Kaggle</a></li>
    </ul>
  </div>

  <div class="hero-main">
    <p class="eyebrow">Overview</p>
    <h1 class="hero-title">Researching practical vision and multimodal systems for edge devices.</h1>
    <p class="hero-subtitle">I completed my <strong>Bachelor's degree in Computer Science and Technology</strong> at <strong>North China Institute of Science and Technology</strong> and am currently pursuing a <strong>Master's degree in Artificial Intelligence and Machine Learning</strong> at the <strong>University of Adelaide</strong>.</p>
    <p>I build machine learning systems for <strong>UAVs</strong>, <strong>robots</strong>, and other edge platforms, with a focus on <strong>computer vision</strong>, <strong>multimodal perception</strong>, and <strong>real-world deployment constraints</strong>. I am currently seeking research opportunities and preparing for future <strong>PhD applications</strong> in computer vision, multimodal learning, and natural language processing.</p>

    <ul class="inline-links">
      <li><a href="{{ '/about/' | relative_url }}">About</a></li>
      <li><a href="{{ '/publications/' | relative_url }}">Publications</a></li>
      <li><a href="{{ '/projects/' | relative_url }}">Projects</a></li>
      <li><a href="{{ '/awards/' | relative_url }}">Awards</a></li>
      <li><a href="{{ '/writing/' | relative_url }}">Writing</a></li>
    </ul>
  </div>
</section>

<section class="home-grid">
  <section class="home-section home-section--wide">
    <p class="eyebrow">Highlights</p>
    <h2 class="section-title">What I’m working on</h2>
    <div class="summary-grid">
      <article class="summary-item">
        <span class="summary-label">Now</span>
        <p>Master's student in AI & Machine Learning at the University of Adelaide, preparing for future PhD applications.</p>
      </article>
      <article class="summary-item">
        <span class="summary-label">Research</span>
        <p>Efficient vision and multimodal systems for UAVs, robots, and edge-device deployment.</p>
      </article>
      <article class="summary-item">
        <span class="summary-label">Recent</span>
        <p>ICASSP 2026 submission, recent publications in applied UAV perception, and the University of Adelaide Global Citizens Scholarship.</p>
      </article>
      <article class="summary-item">
        <span class="summary-label">Outside work</span>
        <p>Outside research, I enjoy AI image generation and spend considerable time experimenting with Nano Banana Pro.</p>
      </article>
    </div>
  </section>

  <section class="home-section home-section--narrow">
    <p class="eyebrow">Navigate</p>
    <h2 class="section-title">Explore</h2>
    <div class="link-grid">
      <a class="link-card" href="{{ '/about/' | relative_url }}">
        <span class="link-card-title">About</span>
        <span class="link-card-text">Background, education, and research interests.</span>
      </a>
      <a class="link-card" href="{{ '/publications/' | relative_url }}">
        <span class="link-card-title">Publications</span>
        <span class="link-card-text">Papers and patents.</span>
      </a>
      <a class="link-card" href="{{ '/projects/' | relative_url }}">
        <span class="link-card-title">Projects</span>
        <span class="link-card-text">Selected engineering and research work.</span>
      </a>
      <a class="link-card" href="{{ '/awards/' | relative_url }}">
        <span class="link-card-title">Awards</span>
        <span class="link-card-text">Scholarships, competitions, and distinctions.</span>
      </a>
    </div>
  </section>

  <section class="home-section home-section--full">
    <p class="eyebrow">Selected work</p>
    <h2 class="section-title">Research and projects</h2>
    <div class="home-split">
      <div>
        <h3 class="subsection-title">Publications</h3>
        <ul class="compact-list compact-list--dense">
          <li>Wu, J., <strong>Wang, W.</strong>, et al. (2025). A lightweight insulator defect detection algorithm based on drone images for power line inspection. <a href="https://doi.org/10.1088/2631-8695/ae19ce">DOI</a></li>
          <li>Ren, G., Wu, J. and <strong>Wang, W.</strong> (2025). Research on UAV Target Detection Based on Improved YOLOv11. <a href="https://doi.org/10.4236/jcc.2025.133006">DOI</a></li>
          <li><a href="{{ '/publications/' | relative_url }}">View full publications list</a></li>
        </ul>
      </div>
      <div>
        <h3 class="subsection-title">Projects</h3>
        <ul class="compact-list compact-list--dense">
          <li>Built UAV-based inspection and rescue pipelines using DeepSort and YOLOv8 for open-pit mine scenarios.</li>
          <li>Worked on mining-truck and visible-infrared drone detection systems under practical deployment constraints.</li>
          <li><a href="{{ '/projects/' | relative_url }}">View selected projects</a></li>
        </ul>
      </div>
    </div>
  </section>
</section>
