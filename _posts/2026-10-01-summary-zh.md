---
layout: default
title: "Horizon Summary: 2026-10-01 (ZH)"
date: 2026-10-01
lang: zh
---

> 从 45 条内容中筛选出 6 条重要资讯。

---

**科技新闻**
1. [Reddit 宣布 11 月停用 RSS，2027 年 3 月关闭公开 API](#item-tech-news-1) 🇺🇸 ⭐️ 8.0/10
2. [Netlify 将 Edge Functions 迁移至 Firecracker microVM，自报请求提速约 5 倍](#item-tech-news-2) 🇺🇸 ⭐️ 7.0/10
3. [DEER 结合广义教师强制：混沌时间序列 RNN 训练提速逾百倍](#item-tech-news-3) 🌍 ⭐️ 7.0/10
4. [社区分析：Qwen 系列成为 100 多个音频模型最常用语言骨干](#item-tech-news-4) 🌍 ⭐️ 7.0/10
5. [OpenAI 称瓦解模型蒸馏攻击，归因与月之暗面相关人员](#item-tech-news-5) 🇺🇸 ⭐️ 7.0/10

**财经新闻**
1. [腾讯据报以约 70 亿美元向甲骨文租用 10 万枚 AI 芯片](#item-finance-news-1) 🇨🇳 ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Reddit 宣布 11 月停用 RSS，2027 年 3 月关闭公开 API](https://techcrunch.com/2026/09/30/reddit-is-killing-rss-feeds-ending-public-api-access-because-of-ai-bots/) 🇺🇸 ⭐️ 8.0/10

据 TechCrunch 报道，Reddit 宣布将于 2026 年 11 月 13 日停止 RSS 订阅支持，并计划于 2027 年 3 月关闭公开 API，给出的理由是这些渠道已被用于大规模抓取和自动化滥用，尤其是 AI 机器人。受影响的对象包括通过 RSS 阅读器跟踪版面的用户、第三方客户端与机器人开发者，以及依赖相关接口的版主。Reddit 建议版主改用 Discord Relay，同时要求第三方应用和机器人开发者在 2027 年 1 月 12 日前完成注册，否则将被移除 API 访问权限。上述日期均为公司宣布的计划安排，截至报道发布尚未生效。

telegram · zaihuapd · 10月1日 00:27

**「背景：RSS 与 Reddit 的数据授权业务」** RSS（Really Simple Syndication，简易信息聚合）是一种标准化的网页订阅格式，让用户和应用程序能够以统一格式获取网站的最新更新。GIGAZINE 转述 TechCrunch 的分析称，Reddit 关闭 RSS 的深层背景在于“允许 AI 公司通过授权协议使用 Reddit 内容训练模型”正成为一项有利可图的生意，免费开放的 RSS 与公开 API 通道因此与公司的数据授权业务形成冲突。

**「影响」** 数以千计的第三方 Reddit 应用、浏览器扩展和内容聚合工具依赖公开 API 与 RSS 订阅，这些功能将随停用而失效；Reddit 建议版主迁移到 Discord Relay Devvit 应用，但承认版主社区之外的 RSS 使用场景没有替代方案。受影响的开发者需尽快行动：公开 API 的新访问申请在 2026 年 10 月 31 日后将不再受理，现有应用和机器人须按 r/redditdev 公布的分阶段时间表迁移至 Reddit 开发者平台，并在 2027 年 1 月 12 日前完成注册，否则将被移除 API 访问权限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://techcrunch.com/2026/09/30/reddit-is-killing-rss-feeds-ending-public-api-access-because-of-ai-bots/">Reddit is killing RSS feeds and ending public API ... | TechCrunch</a></li>
<li><a href="https://gigazine.net/gsc_news/en/20261001-reddit-killing-rss-feeds-end-public-api/">Reddit has announced it will discontinue RSS feeds and... - GIGAZINE</a></li>
<li><a href="https://www.linkedin.com/news/story/reddit-axes-rss-and-public-api-as-it-curbs-data-access-7631628/">Reddit axes RSS and public API as it curbs data access | LinkedIn</a></li>
<li><a href="https://daily.dev/posts/reddit-is-killing-rss-feeds-and-ending-public-api-access-because-of-ai-bots-etgqokzhb">Reddit is killing RSS feeds and ending public API access...</a></li>
<li><a href="https://www.unite.ai/reddit-sets-dates-to-retire-rss-feeds-and-close-public-api-access/">Reddit Sets Dates to Retire RSS Feeds and Close Public API Access</a></li>

</ul>
</details>

**标签**: `#Reddit`, `#API`, `#RSS`, `#AI bots`, `#developer ecosystem`

---

<a id="item-tech-news-2"></a>
### [Netlify 将 Edge Functions 迁移至 Firecracker microVM，自报请求提速约 5 倍](https://www.netlify.com/blog/edge-functions-firecracker-microvms/) 🇺🇸 ⭐️ 7.0/10

Netlify 于 2026 年 9 月 30 日在博客中宣布，已将 Edge Functions 的执行层从托管的 V8 isolate 执行服务迁移到基于 Unikraft 构建的 Firecracker microVM。据其描述，请求此前需发往外部托管执行服务，现在则运行在 Netlify 自有边缘网络内的 microVM 中，中位请求性能约提升 5 倍。这 5 倍数字出自 Netlify 自己的博客，属于厂商自报数据，尚未经过独立测试验证。

hackernews · jbott · 9月30日 18:17 · [社区讨论](https://news.ycombinator.com/item?id=49912444)

**「背景：从 V8 isolate 到 Firecracker microVM」** Netlify 的边缘函数此前运行在 V8 isolate 中，这是一种在共享 V8 运行时内划分出的轻量 JavaScript 沙箱，启动开销小，常被用于边缘计算场景；但在旧架构下，边缘函数请求需要发送到外部的托管执行服务处理，因而带来额外的网络往返开销。Firecracker 代表另一种隔离路线，它以轻量 microVM 的形式提供硬件虚拟机级别的隔离，Netlify 此次借助 Unikraft 构建了这些 microVM，并将其部署到自己的边缘网络内。在迁移前的旧架构中，warm 调用的中位延迟约为 25–40 毫秒，这一数字也是本次提速声明所参照的基线。

**「对用户的实际影响」** 对现有 Netlify Edge Functions 用户而言，这次底层更换不要求任何代码改动或迁移操作，函数会在原平台上自动获得性能改善：据 ByteIOTA 报道，热调用耗时从原来的 25–40ms 降至约 5–6ms，P99 延迟改善 47.4%，可用性达到 99.998%，日志投递速度也随之提升。不过这些数字均出自 Netlify 的自述，尚无独立测量结果，对延迟敏感的团队建议先在自身流量上实测，再据此做性能或架构层面的决策。

**「社区讨论」** 讨论中对提速数字的口径提出了质疑：yencabulator 认为 5 倍提升可能主要来自省去了原先发往托管执行服务的网络往返，而非 microVM 执行本身更快，认为标题有误导之嫌；nchmy 则以 Cloudflare Workers（同样基于 V8 isolate）的延迟表现远优于 Netlify 所称的 25-40ms 为由，表示难以相信其基线数据。Unikraft 团队成员在评论区回应技术问题，并补充了两篇相关技术文章。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.netlify.com/blog/edge-functions-firecracker-microvms/">5 x faster Edge Functions : How we replaced v8 isolates with...</a></li>
<li><a href="https://byteiota.com/netlify-edge-functions-switch-to-firecracker-5x-faster/">Netlify Edge Functions Switch to Firecracker : 5 x Faster | byteiota</a></li>
<li><a href="https://www.netlify.com/blog/edge-functions-firecracker-microvms/">5x faster Edge Functions: v8 isolates to Firecracker MicroVMs</a></li>
<li><a href="https://byteiota.com/netlify-edge-functions-switch-to-firecracker-5x-faster/">Netlify Edge Functions Switch to Firecracker: 5x Faster</a></li>

</ul>
</details>

**标签**: `#edge-computing`, `#serverless`, `#virtualization`, `#firecracker`, `#cloud-infrastructure`

---

<a id="item-tech-news-3"></a>
### [DEER 结合广义教师强制：混沌时间序列 RNN 训练提速逾百倍](https://www.reddit.com/r/MachineLearning/comments/1wuz2s4/parallelintime_training_of_recurrent_neural/) 🌍 ⭐️ 7.0/10

一组作者在 Reddit 发帖介绍其称入选 NeurIPS 2026 spotlight 的论文（预印本 arXiv:2605.12683），提出将 DEER 与广义教师强制（GTF）结合，把非线性 RNN 在混沌动力系统时间序列上的训练沿时间维度并行化，并报告超过 100 倍的加速。DEER 通过牛顿型不动点迭代在整个序列长度 T 上求解 RNN 前向传播，借助 GPU 并行将扩展性从 O\[T\] 提升到 O\[\(log T\)²\]，但在混沌动力学下会失效、运行时间退化为 O\[T log T\]；GTF 则用于稳定 DEER、防止混沌导致的发散，并减少传统教师强制训练状态空间模型时的暴露偏差。作者称该组合可在长度超过 10^6 个时间步的模拟或真实混沌系统序列上稳定训练，并在动力系统重建（DSR）任务中大幅优于 Mamba 等状态空间模型。上述加速比、与 Mamba 的对比结果以及 spotlight 录用信息均为作者自述，来自其预印本和论坛帖，尚无独立基准验证。

reddit · r/MachineLearning · /u/DangerousFunny1371 · 10月1日 13:12

**「背景」** 与 Transformer 和线性状态空间模型可在现代硬件上并行求值不同，非线性 RNN 的序列评测传统上被视为本质串行的问题。Lim 等人于 2024 年提出的 DEER 方法将非线性 RNN 的前向计算转化为一个不动点问题，并用并行化的牛顿迭代法求解，使评测随序列长度的扩展从 O\(T\) 降为对数级并带来显著加速。不过按论文作者的说明，DEER 在混沌动力学下会失效、运行时间退化为 O\(T log T\)，这正是该团队引入广义教师强制来稳定它的直接动因。

**「实际影响」** 对于需要在混沌系统长时间序列上训练非线性 RNN 的研究者，该方法将训练的时间复杂度从串行的 O\[T\] 降至约 O\[\(log T\)²\]，使超过 100 万步（T&gt;10⁶）的序列训练在 GPU 上变得可行，作者报告超过 100 倍加速，并称在动力系统重建（DSR）设定下大幅优于 Mamba 等状态空间模型。需要注意的是，其优势针对混沌时间序列与 DSR 场景，并非对所有序列建模任务的通用替代；且加速与对比数字均为作者自报、尚无独立复现，相关团队若要采用，应先通过 arXiv 预印本（2605.12683）在自己的数据上验证，并将其作为对比基线纳入评测，而非直接替换现有训练流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openreview.net/forum?id=hBCxxVQDBw">Towards Scalable and Stable Parallelization of Nonlinear RNNs</a></li>
<li><a href="https://arxiv.org/html/2407.19115v3">Towards Scalable and Stable Parallelization of Nonlinear RNNs</a></li>
<li><a href="https://arxiv.org/abs/2605.12683">[2605.12683] Parallel-in-Time Training of Recurrent Neural ...</a></li>
<li><a href="https://arxiv.org/pdf/2605.12683">Parallel-in-Time Training of Recurrent Neural Networks for ...</a></li>

</ul>
</details>

**标签**: `#machine-learning`, `#RNN`, `#parallel-in-time`, `#dynamical-systems`, `#research-paper`

---

<a id="item-tech-news-4"></a>
### [社区分析：Qwen 系列成为 100 多个音频模型最常用语言骨干](https://www.reddit.com/r/MachineLearning/comments/1wuctrt/qwenfamily_llms_are_quietly_becoming_the_backbone/) 🌍 ⭐️ 7.0/10

Reddit r/MachineLearning 用户发布的一项社区分析梳理了 100 多个音频模型的共享构建模块，发现 Qwen 系列已成为其中最常用的语言骨干：32 个音频模型家族采用 Qwen 系列架构，其中 20 个明确基于 Qwen3 LLM。Qwen 的使用已不限于语音合成（TTS），还延伸到语音识别与音频理解、音乐生成、语音到语音乃至音视频模型。作者还绘制了「任务 × 技术」矩阵图，展示各构建模块分别支撑哪些类型的音频模型，供从业者在选择语言骨干时参考。需要说明的是，这是一项非正式的社区调研而非同行评审研究，原文未详述模型筛选与统计方法，上述数字应视为该数据集范围内的观察结果。

reddit · r/MachineLearning · /u/Acceptable-Cycle4645 · 9月30日 18:31

**「音频模型的“语言骨干”与 audio.cpp」** 许多现代音频模型并非单一整体网络，而是由音频 tokenizer/codec 与一个充当“语言骨干”的 LLM 拼装而成：骨干在离散音频单元上建模语言与语义，音频侧组件负责声学的输入输出，因此骨干的许可、语言能力和推理生态会被下游音频模型直接继承。Qwen（通义千问）是阿里巴巴开放权重的大语言模型系列。本次统计所依据的 audio.cpp 是一个纯 C++ 的统一推理项目，目前已收录 80 多个模型家族、120 多个模型变体，其中就包括 qwen3\_tts 这类以 Qwen3 为骨干的 TTS 模型。

**「对开发者的选型影响」** 对于正在为新音频模型挑选语言骨架的开发者，这份统计给出了直接的选型信号：Qwen 系（尤其 Qwen3）在 TTS、ASR/音频理解、音乐生成和语音到语音等各类任务中份额最大，围绕它的微调配方、分词器和参考实现更可能率先沉淀，新项目默认从 Qwen3 起步有望减少适配成本。想先上手体验的团队可以试用 Qwen 在 Hugging Face 上开放的 Qwen3-TTS 空间，它支持通过风格描述创建新音色、上传音频样本克隆音色，也可直接选用现成音色 \[tool-3-1\]。需要保留的边界是：该统计来自 Reddit 社区的非正式梳理，方法细节未完整公开；且 Qwen 骨架的趋势主要反映较大规模模型，面向本地 CPU 的端侧部署仍是另一条路线，例如 99M 参数、经 ONNX Runtime 在 CPU 上本地运行的开放权重 TTS 模型 Supertonic 3 \[tool-3-3\]。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/0xShug0/audio.cpp">GitHub - 0xShug0/ audio . cpp : An all-in-one, pure C++ inference...</a></li>
<li><a href="https://huggingface.co/spaces/Qwen/Qwen3-TTS">Qwen 3 - TTS Demo - a Hugging Face Space by Qwen</a></li>
<li><a href="https://supertonic3.github.io/">Supertonic 3 — Lightning-Fast, On-Device, Multilingual TTS</a></li>

</ul>
</details>

**标签**: `#Qwen`, `#LLM`, `#audio-models`, `#TTS`, `#architecture-survey`

---

<a id="item-tech-news-5"></a>
### [OpenAI 称瓦解模型蒸馏攻击，归因与月之暗面相关人员](https://openai.com/index/disrupting-a-coordinated-model-distillation-campaign/) 🇺🇸 ⭐️ 7.0/10

OpenAI 宣布已瓦解一起协同进行的模型蒸馏攻击：攻击者通过操纵交互来提取其受保护的推理输出。OpenAI 称，相关活动最早出现于 2026 年 7 月初，在 7 月 24 至 25 日达到高峰，涉及 4000 多名用户的超过 1.6 万次请求，范围随后扩大至 1.5 万余个账号，截至 7 月 28 日相关活动已被瓦解。OpenAI 将核心活动归因于与月之暗面（Kimi 开发商）有关的人员；该归因目前是 OpenAI 的单方面说法，来源中未包含独立验证或月之暗面方面的回应。OpenAI 表示已通过 Frontier Model Forum 等渠道与业界和政府共享相关信息。

telegram · zaihuapd · 10月1日 01:18

**「模型蒸馏与月之暗面」** 对抗性蒸馏指未经授权、系统性地利用一家模型的输出或推理过程来训练、复现或改进另一家模型，OpenAI 在其公告中正是以这一概念描述此次被瓦解的活动，并将模型给出答案前的&quot;受保护推理内容&quot;列为核心防护对象。月之暗面是中国的人工智能公司，其开发的 Kimi 系列模型与 OpenAI 的前沿推理模型构成直接竞争，这也是 OpenAI 将核心活动归因于与其有关的人员引发关注的原因。

**「影响」** OpenAI 已通过 Frontier Model Forum 等渠道与业界和政府共享此次活动的时间线、规模与归因评估，其他前沿模型开发商可据此排查自家推理模型是否正遭遇类似的推理内容提取手法。对基于 OpenAI 推理模型构建产品的开发者而言，OpenAI 能在活动出现后约一个月内检测并瓦解涉及上万名用户的相关活动，表明通过操纵交互获取受保护推理输出属于其会实际执行的服务条款红线，相关团队应审查自身的数据获取与提示流程，避免触发类似处置。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/disrupting-a-coordinated-model-distillation-campaign/">Disrupting a coordinated model-distillation campaign | OpenAI</a></li>
<li><a href="https://www.bankinfosecurity.com/openai-accuses-moonshot-ai-coordinated-model-distillation-a-32982">OpenAI Accuses Moonshot AI of Coordinated Model Distillation</a></li>
<li><a href="https://openai.com/index/disrupting-a-coordinated-model-distillation-campaign/">Disrupting a coordinated model-distillation campaign | OpenAI</a></li>
<li><a href="https://cyberscoop.com/openai-moonshot-ai-model-distillation-attack/">OpenAI reveals ‘novel’ encryption bypass used in distillation ...</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#model distillation`, `#AI security`, `#Moonshot AI`, `#frontier models`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [腾讯据报以约 70 亿美元向甲骨文租用 10 万枚 AI 芯片](https://www.ft.com/content/8799b33d-f07c-4a03-82f0-bf5d3d1d29e9) 🇨🇳 ⭐️ 8.0/10

据《金融时报》与路透社报道，腾讯与甲骨文签订价值约 70 亿美元、为期五年的租约，租用约 10 万枚中国公司无法直接购买的先进 AI 芯片，成为腾讯史上最大的海外租赁交易。这些芯片将部署在东南亚数据中心，用于加速腾讯的 AI 模型与智能体工具开发；美国现行规则禁止中国企业直接购买此类芯片但允许在海外租赁，且约 30%款项需预付。

telegram · zaihuapd · 10月1日 05:07

**「背景」** 美国出口管制限制的是先进 AI 芯片&quot;运往哪里&quot;，而非谁能远程使用，因此字节跳动、阿里巴巴等中国公司多年来一直通过海外数据中心租用算力，此前也有报道称腾讯去年 12 月曾以约 12 亿美元的合同在日本租用约 1.5 万枚英伟达 Blackwell 芯片。不过，美国商务部工业与安全局近期已开始审查这类合规的海外算力租赁，华盛顿正着手填补这一漏洞。

**「影响」** 在美国出口管制下，这种获规则允许的海外租赁为中国 AI 企业提供了获取国内买不到的英伟达尖端芯片的合规途径，同时为甲骨文的云基础设施业务带来大额长期收入。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.zerohedge.com/markets/tencent-rents-100000-ai-chips-cash-strapped-oracle-huge-discount-7bn-deal">Tencent Rents 100 , 000 AI Chips At Huge Discount From... | ZeroHedge</a></li>
<li><a href="https://www.techtimes.com/articles/323532/20260807/bis-targets-legal-cloud-compute-china-ai-firms-bypass-export-controls.htm">BIS Targets Legal Cloud Compute as China AI Firms Bypass ...</a></li>
<li><a href="https://www.forbes.com/sites/viviantoh/2026/08/31/the-ai-chip-wars-new-front-control-the-cloud-not-the-silicon/">The U.S. Tried To Keep AI Chips From China. The ... - Forbes</a></li>
<li><a href="https://www.ft.com/content/8799b33d-f07c-4a03-82f0-bf5d3d1d29e9?syn-25a6b1a6=1">China ’s Tencent leases 100,000 chips from Oracle to accelerate AI ...</a></li>

</ul>
</details>

**标签**: `#AI芯片`, `#腾讯`, `#甲骨文`, `#美国出口管制`, `#云计算`

---