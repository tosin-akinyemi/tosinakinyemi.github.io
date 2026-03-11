<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Esther Akinyemi</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet"/>
<style>
*{box-sizing:border-box;margin:0;padding:0;}
body{font-family:'Inter',sans-serif;background:#fff;color:#111827;}
button{font-family:'Inter',sans-serif;cursor:pointer;}
a{text-decoration:none;}
.page{display:none;}.page.active{display:block;}

/* NAV */
nav{position:fixed;top:0;width:100%;background:#fff;border-bottom:1px solid #e5e7eb;z-index:1000;padding:0 40px;}
.nav-inner{max-width:960px;margin:0 auto;display:flex;align-items:center;justify-content:space-between;height:60px;}
.nav-logo{font-weight:800;font-size:1rem;color:#111827;background:none;border:none;cursor:pointer;}
.nav-logo span{color:#16a34a;}
.nav-links{display:flex;gap:4px;flex-wrap:wrap;}
.nav-btn{padding:6px 12px;border-radius:6px;background:none;border:1px solid transparent;color:#6b7280;font-size:13px;font-weight:400;}
.nav-btn:hover{background:#f9fafb;color:#111827;}
.nav-btn.active{background:#f0fdf4;color:#16a34a;border-color:#dcfce7;font-weight:600;}

/* INNER HERO */
.inner-hero{background:linear-gradient(135deg,#0a1628 0%,#0f2744 60%,#0d3b38 100%);padding:56px 40px;text-align:center;position:relative;overflow:hidden;}
.inner-hero::before{content:'';position:absolute;width:300px;height:300px;border-radius:50%;background:#16a34a;opacity:.07;top:-80px;right:-60px;pointer-events:none;}
.inner-hero::after{content:'';position:absolute;width:200px;height:200px;border-radius:50%;background:#22c55e;opacity:.06;bottom:-60px;left:-40px;pointer-events:none;}
.inner-hero h1{font-size:2.2rem;font-weight:800;color:#fff;letter-spacing:-0.5px;position:relative;z-index:1;}
.inner-hero p{color:#9ca3af;margin-top:8px;font-size:1rem;position:relative;z-index:1;}

/* PAGE BACKGROUNDS */
#about{background:linear-gradient(180deg,#f0fdf4 0%,#ffffff 100%);}
#experience{background:#ffffff;}
#projects{background:linear-gradient(180deg,#f8fafc 0%,#f0fdf4 100%);}
#skills{background:#ffffff;}
#events{background:linear-gradient(180deg,#f0fdf4 0%,#ffffff 100%);}
#blog{background:#ffffff;}
#resume{background:linear-gradient(180deg,#f8fafc 0%,#ffffff 100%);}
#contact{background:linear-gradient(135deg,#0a1628 0%,#0f2744 60%,#0d3b38 100%);}

/* WRAP */
.wrap{max-width:960px;margin:0 auto;padding:60px 40px;}

/* HOME */
#home{background:#fff;min-height:100vh;padding-top:60px;display:flex;align-items:center;}
.home-grid{max-width:960px;margin:0 auto;padding:80px 40px;display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center;width:100%;}
.home-badge{display:inline-flex;align-items:center;gap:8px;background:#f0fdf4;border:1px solid #dcfce7;border-radius:20px;padding:6px 14px;margin-bottom:24px;}
.home-badge span.dot{width:8px;height:8px;border-radius:50%;background:#22c55e;display:inline-block;}
.home-badge span.txt{font-size:12px;font-weight:600;color:#16a34a;}
.home-h1{font-size:3.6rem;font-weight:900;color:#111827;line-height:1.05;letter-spacing:-1.5px;margin-bottom:8px;}
.home-h1 span{color:#16a34a;}
.home-role{font-size:1.1rem;color:#6b7280;margin-bottom:12px;font-weight:400;}
.home-desc{font-size:.95rem;color:#6b7280;line-height:1.75;margin-bottom:36px;max-width:420px;}
.home-btns{display:flex;gap:12px;flex-wrap:wrap;}
.btn-green{padding:12px 24px;border-radius:8px;font-weight:600;font-size:14px;background:#16a34a;color:#fff;border:none;}
.btn-outline{padding:12px 24px;border-radius:8px;font-weight:600;font-size:14px;background:#fff;color:#111827;border:1.5px solid #e5e7eb;}
.btn-outline-green{padding:12px 24px;border-radius:8px;font-weight:600;font-size:14px;background:#fff;color:#16a34a;border:1.5px solid #dcfce7;}
.photo-wrap{position:relative;display:flex;justify-content:center;}
.photo-frame{width:320px;height:380px;border-radius:24px;overflow:hidden;box-shadow:0 20px 60px rgba(0,0,0,.12);}
.photo-frame img{width:100%;height:100%;object-fit:cover;object-position:top center;display:block;}
.photo-fallback{width:100%;height:100%;background:linear-gradient(135deg,#14532d,#22c55e);display:flex;align-items:center;justify-content:center;font-size:5rem;color:#fff;font-weight:900;}
.stat-card{position:absolute;background:#fff;border-radius:12px;padding:12px 18px;box-shadow:0 8px 30px rgba(0,0,0,.1);border:1px solid #f3f4f6;}
.stat-card .n{font-size:1.4rem;font-weight:800;color:#16a34a;}
.stat-card .l{font-size:11px;color:#6b7280;font-weight:500;}
.stat1{bottom:-16px;left:-24px;}
.stat2{top:24px;right:-24px;}

/* ABOUT */
.two-col{display:grid;grid-template-columns:1fr 1fr;gap:60px;}
.stat-row{display:grid;grid-template-columns:1fr 1fr 1fr;gap:12px;margin-top:32px;}
.stat-box{background:#f0fdf4;border-radius:12px;padding:16px;text-align:center;border:1px solid #dcfce7;}
.stat-box .n{font-size:1.5rem;font-weight:800;color:#16a34a;}
.stat-box .l{font-size:11px;color:#6b7280;margin-top:4px;font-weight:500;}

/* SECTION LABELS */
.s-tag{font-size:11px;font-weight:700;letter-spacing:2px;text-transform:uppercase;color:#16a34a;margin-bottom:8px;}
.s-title{font-size:1.8rem;font-weight:800;color:#111827;margin-bottom:32px;line-height:1.2;}
.s-title span{color:#16a34a;}
p.body{color:#6b7280;line-height:1.85;margin-bottom:16px;font-size:15px;}

/* EXPERIENCE */
.exp-card{background:#fff;border:1px solid #e5e7eb;border-radius:12px;padding:24px 28px;border-left:3px solid #16a34a;margin-bottom:16px;}
.exp-top{display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:8px;gap:8px;flex-wrap:wrap;}
.exp-title{font-weight:700;color:#111827;font-size:1rem;}
.exp-co{color:#16a34a;font-size:13px;font-weight:500;margin-top:2px;}
.exp-period{background:#f9fafb;color:#6b7280;font-size:12px;font-weight:500;padding:4px 12px;border-radius:20px;white-space:nowrap;}
.exp-card ul{padding-left:1.1rem;color:#6b7280;font-size:14px;line-height:1.8;}

/* PROJECTS */
.grid-2{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:20px;}
.proj-card{border:1px solid #e5e7eb;border-radius:16px;overflow:hidden;background:#fff;}
.proj-top{height:100px;background:linear-gradient(135deg,#111827,#16a34a);display:flex;align-items:center;justify-content:center;font-size:2.2rem;}
.proj-body{padding:20px;}
.proj-body h3{font-weight:700;color:#111827;font-size:15px;margin-bottom:8px;}
.proj-body p{color:#6b7280;font-size:13px;line-height:1.7;margin-bottom:12px;}
.tag{display:inline-block;background:#dcfce7;color:#14532d;font-size:11px;font-weight:600;padding:3px 10px;border-radius:20px;margin:3px 3px 0;}

/* SKILLS */
.skill-card{border:1px solid #e5e7eb;border-radius:12px;padding:20px;background:#fff;}
.skill-card h3{font-weight:700;color:#111827;font-size:14px;margin-bottom:12px;padding-bottom:10px;border-bottom:2px solid #16a34a;}
.skill-card ul{list-style:none;padding:0;}
.skill-card li{color:#6b7280;font-size:13px;padding:5px 0;display:flex;align-items:center;gap:8px;}
.skill-card li::before{content:"›";color:#16a34a;font-weight:700;font-size:1rem;}

/* EVENTS */
.ev-card{border:1px solid #e5e7eb;border-radius:16px;overflow:hidden;background:#fff;}
.ev-banner{height:160px;display:flex;align-items:center;justify-content:center;font-size:3.5rem;}
.ev-body{padding:20px;}
.ev-badge{background:#f0fdf4;color:#16a34a;font-size:11px;font-weight:600;padding:3px 10px;border-radius:20px;border:1px solid #dcfce7;}
.ev-body h3{font-weight:700;color:#111827;font-size:15px;margin:10px 0 4px;line-height:1.4;}
.ev-meta{color:#16a34a;font-size:12px;font-weight:600;margin-bottom:10px;}
.ev-body p{color:#6b7280;font-size:13px;line-height:1.7;}

/* BLOG */
.blog-card{border:1px solid #e5e7eb;border-radius:16px;overflow:hidden;background:#fff;max-width:560px;}
.blog-banner{height:100px;background:linear-gradient(135deg,#111827,#22c55e);display:flex;align-items:center;justify-content:center;font-size:2rem;}
.blog-body{padding:20px;}
.blog-body h3{font-weight:700;color:#111827;font-size:15px;margin-bottom:8px;line-height:1.4;}
.blog-body p{color:#6b7280;font-size:13px;line-height:1.7;margin-bottom:12px;}
.blog-body a{color:#16a34a;font-size:13px;font-weight:600;}
.divider{height:1px;background:#f3f4f6;margin:48px 0 32px;}
.testi-card{border:1px solid #e5e7eb;border-radius:12px;padding:24px;background:#fff;}
.quote{font-size:2rem;color:#16a34a;line-height:1;margin-bottom:12px;}
.testi-card p{color:#6b7280;font-size:14px;line-height:1.8;font-style:italic;margin-bottom:16px;}
.testi-card .author{font-weight:700;color:#111827;font-size:14px;}

/* RESUME */
.resume-wrap{max-width:900px;margin:40px auto;padding:0 40px;}
.resume-card{border:1px solid #e5e7eb;border-radius:16px;overflow:hidden;box-shadow:0 4px 24px rgba(0,0,0,.06);}
.res-head{background:#111827;padding:36px 40px;}
.res-head h2{font-size:2rem;font-weight:900;color:#fff;letter-spacing:-.5px;}
.res-head .sub{color:#9ca3af;font-size:14px;margin:6px 0 16px;font-weight:500;}
.res-contacts{display:flex;gap:20px;flex-wrap:wrap;font-size:13px;color:#d1d5db;}
.res-contacts a{color:#22c55e;}
.res-summary{background:#f0fdf4;padding:16px 40px;border-bottom:1px solid #dcfce7;}
.res-summary p{color:#6b7280;font-size:13.5px;line-height:1.75;}
.res-body{display:grid;grid-template-columns:240px 1fr;}
.res-left{background:#f9fafb;padding:28px 24px;border-right:1px solid #e5e7eb;}
.res-right{background:#fff;padding:28px 32px;}
.res-h{font-size:10px;font-weight:800;letter-spacing:2px;text-transform:uppercase;color:#16a34a;border-bottom:1.5px solid #dcfce7;padding-bottom:6px;margin-bottom:14px;}
.res-section{margin-bottom:28px;}
.edu-item{margin-bottom:16px;}
.edu-item .deg{font-weight:600;color:#111827;font-size:12.5px;line-height:1.4;}
.edu-item .school{color:#16a34a;font-size:11.5px;margin-top:2px;}
.edu-item .yr{color:#6b7280;font-size:11px;margin-top:1px;}
.skill-pill{display:inline-block;background:#dcfce7;color:#14532d;font-size:11px;font-weight:500;padding:3px 9px;border-radius:16px;margin:3px 2px;}
.res-exp{margin-bottom:20px;padding-bottom:20px;border-bottom:1px solid #f3f4f6;}
.res-exp:last-child{border-bottom:none;padding-bottom:0;margin-bottom:0;}
.res-exp-top{display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:4px;flex-wrap:wrap;gap:4px;}
.res-exp .title{font-weight:700;color:#111827;font-size:13.5px;}
.res-exp .co{color:#16a34a;font-size:12px;margin-top:1px;}
.res-exp .dates{background:#f9fafb;color:#6b7280;font-size:11px;padding:3px 10px;border-radius:16px;white-space:nowrap;}
.res-exp ul{padding-left:1rem;color:#6b7280;font-size:12.5px;line-height:1.75;margin-top:6px;}

/* CONTACT */
.contact-grid{display:flex;gap:16px;flex-wrap:wrap;justify-content:center;margin-top:32px;}
.contact-card{border:1px solid #e5e7eb;border-radius:12px;padding:24px 28px;text-align:center;color:#111827;flex:1;min-width:140px;background:#fff;display:block;}
.contact-card .icon{font-size:1.75rem;margin-bottom:8px;}
.contact-card .label{font-size:11px;color:#6b7280;margin-bottom:4px;font-weight:500;text-transform:uppercase;letter-spacing:1px;}
.contact-card .val{font-weight:600;font-size:13px;color:#111827;}

footer{background:linear-gradient(135deg,#0a1628,#0d3b38);color:#6b7280;text-align:center;padding:20px;font-size:12px;}

/* DECORATIVE SECTION ACCENTS */
#about .wrap::before,#projects .wrap::before,#events .wrap::before{content:'✚';position:absolute;font-size:4rem;color:#dcfce7;opacity:.5;right:5%;top:20px;pointer-events:none;}
#about .wrap,#projects .wrap,#events .wrap{position:relative;}

/* SUBTLE HEALTHCARE ICONS WATERMARK */
.hc-watermark{position:absolute;font-size:6rem;opacity:.04;pointer-events:none;user-select:none;}

/* CONTACT page text overrides */
#contact .wrap p{color:#94a3b8;}
#contact .s-tag{color:#22c55e;}
#contact .s-title{color:#fff;}
#contact .contact-card{background:rgba(255,255,255,.07);border-color:rgba(255,255,255,.1);color:#fff;}
#contact .contact-card .label{color:#94a3b8;}
#contact .contact-card .val{color:#fff;}
#contact .contact-card:hover{background:#16a34a;border-color:#16a34a;}

@media(max-width:768px){
  .home-grid,.two-col,.res-body{grid-template-columns:1fr;}
  .home-grid{gap:40px;padding:60px 24px;}
  .photo-frame{width:260px;height:300px;}
  .stat1,.stat2{display:none;}
  .wrap{padding:40px 24px;}
  nav{padding:0 20px;}
  .nav-links{gap:2px;}
  .nav-btn{padding:5px 8px;font-size:12px;}
}
</style>
</head>
<body>

<!-- NAV -->
<nav>
  <div class="nav-inner">
    <button class="nav-logo" onclick="show('home')">Esther <span>Akinyemi</span></button>
    <div class="nav-links">
      <button class="nav-btn active" onclick="show('home')">Home</button>
      <button class="nav-btn" onclick="show('about')">About</button>
      <button class="nav-btn" onclick="show('experience')">Experience</button>
      <button class="nav-btn" onclick="show('projects')">Projects</button>
      <button class="nav-btn" onclick="show('skills')">Skills</button>
      <button class="nav-btn" onclick="show('events')">Events</button>
      <button class="nav-btn" onclick="show('blog')">Blog</button>
      <button class="nav-btn" onclick="show('resume')">Resume</button>
      <button class="nav-btn" onclick="show('contact')">Contact</button>
    </div>
  </div>
</nav>

<!-- HOME -->
<div id="home" class="page active" style="padding-top:60px;background:linear-gradient(135deg,#0a1628 0%,#0f2744 60%,#0d3b38 100%);min-height:100vh;display:flex;align-items:center;position:relative;overflow:hidden;">
  <!-- bg circles -->
  <div style="position:absolute;width:500px;height:500px;border-radius:50%;background:#16a34a;opacity:.06;top:-150px;right:-100px;pointer-events:none;"></div>
  <div style="position:absolute;width:350px;height:350px;border-radius:50%;background:#0d9488;opacity:.07;bottom:-100px;left:-80px;pointer-events:none;"></div>
  <div style="position:absolute;width:180px;height:180px;border-radius:50%;background:#16a34a;opacity:.05;top:40%;left:35%;pointer-events:none;"></div>

  <div class="home-grid" style="width:100%;">
    <!-- photo LEFT -->
    <div class="photo-wrap">
      <div style="width:300px;height:300px;border-radius:50%;background:linear-gradient(135deg,#16a34a,#22c55e);padding:5px;box-shadow:0 0 50px rgba(22,163,74,.35);">
        <img src="https://tosin-akinyemi.github.io/portfolio.jpeg" alt="Esther Akinyemi"
          style="width:100%;height:100%;border-radius:50%;object-fit:cover;object-position:top center;display:block;"
          onerror="this.style.display='none';this.parentElement.innerHTML='<div style=\'width:100%;height:100%;border-radius:50%;background:linear-gradient(135deg,#14532d,#22c55e);display:flex;align-items:center;justify-content:center;font-size:4rem;color:#fff;font-weight:900\'>EA</div>'"/>
      </div>
      <div style="position:absolute;width:14px;height:14px;background:#22c55e;border-radius:50%;top:20px;left:10px;border:2px solid #0a1628;"></div>
      <div style="position:absolute;width:20px;height:20px;background:#22c55e;border-radius:50%;bottom:20px;right:5px;border:3px solid #0a1628;"></div>
    </div>
    <!-- text RIGHT -->
    <div>
      <div style="color:#22c55e;font-size:12px;font-weight:700;letter-spacing:3px;text-transform:uppercase;margin-bottom:12px;">👋 Hello, my name is</div>
      <h1 style="font-size:3.8rem;font-weight:900;color:#fff;line-height:1.0;letter-spacing:-1px;margin-bottom:16px;">ESTHER<br/><span style="color:#22c55e;">AKINYEMI</span></h1>
      <p style="color:#94a3b8;font-size:1rem;line-height:1.75;max-width:460px;margin-bottom:8px;">Project Coordinator & Compliance Specialist driving customer success across telecom, hospitality, and technology sectors.</p>
      <p style="color:#22c55e;font-size:.88rem;font-weight:600;margin-bottom:28px;">📍 Toronto, Ontario · Open to Opportunities</p>
      <div class="home-btns">
        <button class="btn-green" onclick="show('projects')">Explore My Work</button>
        <button style="padding:12px 24px;border-radius:8px;font-weight:600;font-size:14px;background:transparent;color:#22c55e;border:1.5px solid #22c55e;cursor:pointer;font-family:'Inter',sans-serif;" onclick="show('resume')">View Resume</button>
        <button style="padding:12px 24px;border-radius:8px;font-weight:600;font-size:14px;background:transparent;color:#22c55e;border:1.5px solid #22c55e;cursor:pointer;font-family:'Inter',sans-serif;" onclick="show('contact')">Get In Touch</button>
      </div>
    </div>
  </div>
  <div style="position:absolute;bottom:20px;left:50%;transform:translateX(-50%);color:#475569;font-size:12px;">▼ Scroll to explore</div>
</div>

<!-- ABOUT -->
<div id="about" class="page">
  <div class="inner-hero"><h1>About Me</h1><p>Who I am & what drives me</p></div>
  <div class="wrap">
    <div class="two-col">
      <div>
        <div class="s-tag">Background</div>
        <h2 class="s-title">My <span>Story</span></h2>
        <p class="body">Project Coordinator and Compliance Specialist with 5+ years of experience driving customer success across telecom, hospitality, and technology sectors, managing $5M+ ARR.</p>
        <p class="body">I excel at team leadership, stakeholder coordination, timeline management, and delivering on-budget results with a focus on risk mitigation and cross-functional collaboration.</p>
        <p class="body">I hold a Master's in Informatics, Security Analytics & AI from Northeastern University.</p>
        <div class="stat-row">
          <div class="stat-box"><div class="n">5+</div><div class="l">Years Exp</div></div>
          <div class="stat-box"><div class="n">$5M+</div><div class="l">ARR Managed</div></div>
          <div class="stat-box"><div class="n">100%</div><div class="l">Audit Pass</div></div>
        </div>
      </div>
      <div>
        <div class="s-tag">Values</div>
        <h2 class="s-title">What I <span>Bring</span></h2>
        <p class="body">With expertise spanning HIPAA, PIPEDA, GDPR, and GCP cloud compliance, I bridge the gap between complex regulatory requirements and real-world business operations.</p>
        <p class="body">I'm passionate about continuous learning — regularly attending industry events and contributing thought leadership to the compliance and data governance community.</p>
        <p class="body">I bring energy, precision, and a results-first mindset to every team I join.</p>
      </div>
    </div>
  </div>
</div>

<!-- EXPERIENCE -->
<div id="experience" class="page">
  <div class="inner-hero"><h1>Experience</h1><p>My professional journey</p></div>
  <div class="wrap">
    <div class="s-tag">Career History</div>
    <h2 class="s-title">Work <span>Experience</span></h2>
    <div class="exp-card">
      <div class="exp-top"><div><div class="exp-title">Website Team Member</div><div class="exp-co">Shaw Direct</div></div><span class="exp-period">Jul 2025 – Aug 2025</span></div>
      <ul><li>Coordinated with designers/developers to integrate APIs and AI models, delivering enhanced website functionality on schedule.</li><li>Managed testing and debugging phases, ensuring project milestones and performance targets were met.</li></ul>
    </div>
    <div class="exp-card">
      <div class="exp-top"><div><div class="exp-title">Customer Success Manager</div><div class="exp-co">Shaw Direct</div></div><span class="exp-period">Mar 2023 – Apr 2024</span></div>
      <ul><li>Coordinated customer lifecycle projects achieving 50% CSAT increase, 30% retention boost, and 20% account growth.</li><li>Led cross-functional teams to resolve issues first-contact, managing stakeholder expectations and timelines.</li><li>Directed proactive communication strategies to maintain project deliverables.</li></ul>
    </div>
    <div class="exp-card">
      <div class="exp-top"><div><div class="exp-title">Administrator</div><div class="exp-co">Covenant Nation</div></div><span class="exp-period">May 2024 – Jan 2025</span></div>
      <ul><li>Responded to client inquiries via phone and email, addressing questions, complaints, and needs.</li><li>Planned and coordinated travel arrangements and administrative tasks.</li><li>Collaborated across teams to develop strategies for improving operational efficiency.</li></ul>
    </div>
    <div class="exp-card">
      <div class="exp-top"><div><div class="exp-title">Technical Support Representative</div><div class="exp-co">Digital Bananas Technology, Lagos</div></div><span class="exp-period">Jan 2023 – Feb 2023</span></div>
      <ul><li>Coordinated Ethernet infrastructure for multi-school cybersecurity competition, ensuring event readiness.</li><li>Maintained network reliability under tight deadlines with technical teams.</li></ul>
    </div>
    <div class="exp-card">
      <div class="exp-top"><div><div class="exp-title">Customer Specialist</div><div class="exp-co">Digital Bananas Technology, Lagos</div></div><span class="exp-period">Mar 2018 – Jan 2022</span></div>
      <ul><li>Oversaw $5M+ ARR portfolio, coordinating upselling campaigns and technical resolutions across multiple customer projects.</li><li>Managed concurrent tasks and stakeholder escalations with full solution follow-through.</li></ul>
    </div>
  </div>
</div>

<!-- PROJECTS -->
<div id="projects" class="page">
  <div class="inner-hero"><h1>Projects</h1><p>Key work I've delivered</p></div>
  <div class="wrap">
    <div class="s-tag">Portfolio</div>
    <h2 class="s-title">Key <span>Projects</span></h2>
    <div class="grid-2">
      <div class="proj-card"><div class="proj-top">☁️</div><div class="proj-body"><h3>Hinsight GCP Compliance</h3><p>Led GCP compliance for Hinsight's healthcare dashboards, implementing BAA agreements, IAM role separation, and audit logging for full HIPAA and PIPEDA adherence.</p><span class="tag">HIPAA</span><span class="tag">PIPEDA</span><span class="tag">GCP</span><span class="tag">IAM</span></div></div>
      <div class="proj-card"><div class="proj-top">🔗</div><div class="proj-body"><h3>CRM Workflow Optimization</h3><p>Integrated HubSpot and Salesforce with Asana and Trello, boosting pipeline efficiency by 30%. Conducted cloud security audits across wellness platforms.</p><span class="tag">HubSpot</span><span class="tag">Salesforce</span><span class="tag">Cloud Security</span></div></div>
      <div class="proj-card"><div class="proj-top">📋</div><div class="proj-body"><h3>Capstone Compliance Audit</h3><p>End-to-end compliance gap audit across wellness platforms achieving 100% gap closure. Developed remediation roadmaps and governance frameworks.</p><span class="tag">Audit</span><span class="tag">Gap Analysis</span><span class="tag">Governance</span></div></div>
      <div class="proj-card"><div class="proj-top">🌐</div><div class="proj-body"><h3>Website Redevelopment – Shaw Direct</h3><p>Coordinated API and AI model integrations, managing testing and debugging phases to deliver enhanced functionality on schedule.</p><span class="tag">API Integration</span><span class="tag">AI</span><span class="tag">Project Management</span></div></div>
    </div>
  </div>
</div>

<!-- SKILLS -->
<div id="skills" class="page">
  <div class="inner-hero"><h1>Skills</h1><p>My areas of expertise</p></div>
  <div class="wrap">
    <div class="s-tag">Expertise</div>
    <h2 class="s-title">My <span>Skills</span></h2>
    <div class="grid-2">
      <div class="skill-card"><h3>Regulatory Compliance</h3><ul><li>GDPR</li><li>AML/KYC</li><li>ISO 27001</li><li>SOX</li><li>HIPAA / PIPEDA</li><li>FCA Regulations</li></ul></div>
      <div class="skill-card"><h3>Risk Management</h3><ul><li>Risk Assessment</li><li>Gap Analysis</li><li>Internal Audits</li><li>Controls Testing</li></ul></div>
      <div class="skill-card"><h3>Policy & Governance</h3><ul><li>Policy Writing</li><li>Procedure Development</li><li>Compliance Reporting</li><li>Training Delivery</li></ul></div>
      <div class="skill-card"><h3>Tools & Platforms</h3><ul><li>Microsoft Office</li><li>GRC Software</li><li>GCP BAA/DLP</li><li>Looker Studio</li><li>HubSpot / Salesforce</li><li>AWS IAM</li><li>GitHub</li></ul></div>
    </div>
  </div>
</div>

<!-- EVENTS -->
<div id="events" class="page">
  <div class="inner-hero"><h1>Events</h1><p>Communities & conferences I'm part of</p></div>
  <div class="wrap">
    <div class="s-tag">Community & Learning</div>
    <h2 class="s-title">Events I've <span>Attended</span></h2>
    <div class="grid-2">
      <div class="ev-card">
        <div class="ev-banner" style="background:linear-gradient(135deg,#111827,#166534);">📊</div>
        <div class="ev-body">
          <span class="ev-badge">Attendee</span>
          <h3>11th Annual Big Data & Analytics Summit Canada</h3>
          <div class="ev-meta">Big Data & Analytics Summit · Canada</div>
          <p>A two-day summit exploring how AI, LLMs, and NLP are transforming data-driven decision-making. Key themes: data governance, automated compliance tools, and data quality in AI adoption.</p>
        </div>
      </div>
      <div class="ev-card">
        <div class="ev-banner" style="background:linear-gradient(135deg,#1e1b4b,#6d28d9);">🔮</div>
        <div class="ev-body">
          <span class="ev-badge">Community Member</span>
          <h3>Obsidian Community Event</h3>
          <div class="ev-meta">Obsidian Community · Toronto</div>
          <p>Active member attending local events focused on knowledge management, personal productivity, and professional development — a space for collaboration with like-minded professionals.</p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- BLOG -->
<div id="blog" class="page">
  <div class="inner-hero"><h1>Blog & Testimonials</h1><p>Thoughts, insights & what others say</p></div>
  <div class="wrap">
    <div class="s-tag">Thought Leadership</div>
    <h2 class="s-title">Latest <span>Posts</span></h2>
    <div class="blog-card">
      <div class="blog-banner">✍️</div>
      <div class="blog-body">
        <h3>Insights from the 11th Annual Big Data & Analytics Summit</h3>
        <p>A reflection on how AI, LLMs, and NLP are reshaping data governance and decision-making. Effective data governance is the foundation for successful AI adoption and meaningful business outcomes.</p>
        <a href="https://www.linkedin.com/in/estheroluakinyemi" target="_blank">Read on LinkedIn →</a>
      </div>
    </div>
    <div class="divider"></div>
    <div class="s-tag">What People Say</div>
    <h2 class="s-title"><span>Testimonials</span></h2>
    <div class="grid-2">
      <div class="testi-card"><div class="quote">"</div><p>I worked with Esther for over 2 years. I can easily describe her as prompt, responsive, thorough, organised, visionary, passionate, efficient, and perspective-taking. She adds a lot of value to any organisation she believes in.</p><div class="author">Stephen Olateju</div></div>
      <div class="testi-card"><div class="quote">"</div><p>Esther is an exceptional addition to any team — she goes all out. She is motivated, and once she commits, she makes sure she delivers. She has a positive competitive drive. I will gladly recommend her for any role.</p><div class="author">Moyosore Majekobaje</div></div>
    </div>
  </div>
</div>

<!-- RESUME -->
<div id="resume" class="page">
  <div class="inner-hero"><h1>Resume</h1><p>My full professional profile</p></div>
  <div class="resume-wrap">
    <div style="text-align:center;margin-bottom:24px;">
      <a href="https://tosin-akinyemi.github.io/" target="_blank" class="btn-green" style="display:inline-block;padding:12px 28px;border-radius:8px;font-weight:600;font-size:14px;background:#16a34a;color:#fff;">⬇ Download PDF</a>
    </div>
    <div class="resume-card">
      <div class="res-head">
        <h2>ESTHER AKINYEMI</h2>
        <p class="sub">Project Coordinator · Compliance Specialist</p>
        <div class="res-contacts">
          <span>📞 416-539-5696</span>
          <span>✉️ estheroluwaabeni@gmail.com</span>
          <span>📍 Toronto, Ontario</span>
          <a href="https://linkedin.com/in/estheroluakinyemi" target="_blank">LinkedIn</a>
          <a href="https://github.com/tosin-akinyemi" target="_blank">GitHub</a>
        </div>
      </div>
      <div class="res-summary"><p>Project Coordinator with 5+ years driving customer success across telecom, hospitality, and technology sectors, managing $5M+ ARR. Expert in team leadership, stakeholder coordination, risk mitigation, and on-budget delivery.</p></div>
      <div class="res-body">
        <div class="res-left">
          <div class="res-section">
            <div class="res-h">Education</div>
            <div class="edu-item"><div class="deg">Master's in Informatics, Security Analytics & AI</div><div class="school">Northeastern University</div><div class="yr">Mar 2026</div></div>
            <div class="edu-item"><div class="deg">Diploma in Digital Business Management</div><div class="school">Toronto School of Management</div></div>
            <div class="edu-item"><div class="deg">Bachelor's in Sociology & Anthropology</div></div>
          </div>
          <div class="res-section">
            <div class="res-h">Skills</div>
            <span class="skill-pill">Project Coordination</span><span class="skill-pill">Agile</span><span class="skill-pill">CRM Software</span><span class="skill-pill">Microsoft Office</span><span class="skill-pill">Cybersecurity</span><span class="skill-pill">AWS IAM</span><span class="skill-pill">Cloud Networking</span><span class="skill-pill">Web Development</span><span class="skill-pill">GitHub</span><span class="skill-pill">HTML</span><span class="skill-pill">Stakeholder Mgmt</span><span class="skill-pill">HIPAA/PIPEDA</span><span class="skill-pill">GCP BAA/DLP</span><span class="skill-pill">Looker Studio</span>
          </div>
          <div class="res-section">
            <div class="res-h">Profiles</div>
            <a href="https://linkedin.com/in/estheroluakinyemi" target="_blank" style="display:block;color:#16a34a;font-size:13px;margin-bottom:6px;">🔗 LinkedIn</a>
            <a href="https://github.com/tosin-akinyemi" target="_blank" style="display:block;color:#16a34a;font-size:13px;">🐙 GitHub</a>
          </div>
        </div>
        <div class="res-right">
          <div class="res-h">Experience</div>
          <div class="res-exp"><div class="res-exp-top"><div><div class="title">Website Team Member</div><div class="co">Shaw Direct</div></div><span class="dates">Jul 2025 – Aug 2025</span></div><ul><li>Coordinated with designers/developers to integrate APIs/AI models on schedule.</li><li>Managed testing/debugging phases ensuring milestones and performance targets were met.</li></ul></div>
          <div class="res-exp"><div class="res-exp-top"><div><div class="title">Customer Success Manager</div><div class="co">Shaw Direct</div></div><span class="dates">Mar 2023 – Apr 2024</span></div><ul><li>Coordinated customer lifecycle projects achieving 50% CSAT increase, 30% retention boost, 20% account growth.</li><li>Led cross-functional teams first-contact resolution, managing stakeholder expectations.</li><li>Directed proactive communication strategies to maintain project deliverables.</li></ul></div>
          <div class="res-exp"><div class="res-exp-top"><div><div class="title">Administrator</div><div class="co">Covenant Nation</div></div><span class="dates">May 2024 – Jan 2025</span></div><ul><li>Responded to client inquiries and addressed questions and needs via phone and email.</li><li>Planned/coordinated travel arrangements and administrative tasks.</li><li>Collaborated across teams to improve operational efficiency.</li></ul></div>
          <div class="res-exp"><div class="res-exp-top"><div><div class="title">Technical Support Representative</div><div class="co">Digital Bananas Technology, Lagos</div></div><span class="dates">Jan 2023 – Feb 2023</span></div><ul><li>Coordinated Ethernet infrastructure for multi-school cybersecurity competition.</li><li>Maintained network reliability under tight deadlines.</li></ul></div>
          <div class="res-exp"><div class="res-exp-top"><div><div class="title">Customer Specialist</div><div class="co">Digital Bananas Technology, Lagos</div></div><span class="dates">Mar 2018 – Jan 2022</span></div><ul><li>Oversaw $5M+ ARR portfolio, coordinating upselling campaigns and technical resolutions.</li><li>Managed concurrent tasks and stakeholder escalations with full follow-through.</li></ul></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- CONTACT -->
<div id="contact" class="page">
  <div class="inner-hero"><h1>Get In Touch</h1><p>Let's work together</p></div>
  <div class="wrap" style="text-align:center;">
    <!-- healthcare decorative icons -->
    <div class="hc-watermark" style="top:10px;left:5%;">🩺</div>
    <div class="hc-watermark" style="top:10px;right:5%;">🛡️</div>
    <p style="color:#94a3b8;line-height:1.8;font-size:15px;max-width:480px;margin:0 auto 40px;">Interested in working together or have a compliance or project management question? I'd love to connect.</p>
    <div class="contact-grid">
      <a href="mailto:estheroluwaabeni@gmail.com" class="contact-card"><div class="icon">✉️</div><div class="label">Email</div><div class="val">estheroluwaabeni@gmail.com</div></a>
      <a href="tel:4165395696" class="contact-card"><div class="icon">📞</div><div class="label">Phone</div><div class="val">416-539-5696</div></a>
      <a href="https://www.linkedin.com/in/estheroluakinyemi" target="_blank" class="contact-card"><div class="icon">💼</div><div class="label">LinkedIn</div><div class="val">estheroluakinyemi</div></a>
      <a href="https://github.com/tosin-akinyemi" target="_blank" class="contact-card"><div class="icon">🐙</div><div class="label">GitHub</div><div class="val">tosin-akinyemi</div></a>
    </div>
  </div>
</div>

<footer>© 2026 Esther Akinyemi · Project Coordinator & Compliance Specialist</footer>

<script>
function show(id){
  document.querySelectorAll('.page').forEach(p=>p.classList.remove('active'));
  document.querySelectorAll('.nav-btn').forEach(b=>b.classList.remove('active'));
  document.getElementById(id).classList.add('active');
  document.querySelectorAll('.nav-btn').forEach(b=>{
    if(b.getAttribute('onclick').includes("'"+id+"'"))b.classList.add('active');
  });
  window.scrollTo(0,0);
}
</script>
</body>
</html>






