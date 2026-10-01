---
layout: default
title: "Horizon Summary: 2026-10-01 (EN)"
date: 2026-10-01
lang: en
---

> From 45 items, 6 important content pieces were selected

---

**Technology News**
1. [Reddit to end RSS feeds and public API access, citing AI-bot abuse](#item-tech-news-1) 🇺🇸 ⭐️ 8.0/10
2. [Netlify moves Edge Functions from hosted V8 isolates to Firecracker microVMs](#item-tech-news-2) 🇺🇸 ⭐️ 7.0/10
3. [DEER plus generalized teacher forcing parallelizes nonlinear RNN training on chaotic series](#item-tech-news-3) 🌍 ⭐️ 7.0/10
4. [Qwen-family LLMs emerge as the most common backbone across 100+ audio models](#item-tech-news-4) 🌍 ⭐️ 7.0/10
5. [OpenAI disrupts model distillation campaign, links it to Moonshot AI personnel](#item-tech-news-5) 🇺🇸 ⭐️ 7.0/10

**Financial News**
1. [Report: Tencent Leases 100,000 AI Chips from Oracle for About $7 Billion](#item-finance-news-1) 🇨🇳 ⭐️ 8.0/10

---

## Technology News

<a id="item-tech-news-1"></a>
### [Reddit to end RSS feeds and public API access, citing AI-bot abuse](https://techcrunch.com/2026/09/30/reddit-is-killing-rss-feeds-ending-public-api-access-because-of-ai-bots/) 🇺🇸 ⭐️ 8.0/10

Reddit has announced it will discontinue RSS feed support on November 13 and close public API access by March 2027, saying the feeds have become a common channel for large-scale scraping and automated abuse, especially by AI bots. The company is advising moderators to move to Discord Relay, and third-party app and bot developers must register by January 12, 2027 or lose API access. The report is attributed to TechCrunch but reached the digest via a Telegram repost and could not be independently verified from the supplied material, so the dates and terms describe an announced plan rather than a completed change.

telegram · zaihuapd · Oct 1, 00:27

**「Background」** RSS \(Really Simple Syndication\) is a standardized web feed format that lets users and applications receive updates from a website in a uniform, machine-readable form, and Reddit&\#x27;s RSS endpoints and public API have served as open access points for readers, third-party apps, and bots. The decision follows a shift in Reddit&\#x27;s business: TechCrunch&\#x27;s reporting indicates that licensing Reddit content to AI companies for model training has become a profitable revenue stream, giving the company a financial incentive to close free channels that permit uncontrolled access to its data.

**「Impact」** Thousands of third-party Reddit apps, browser extensions, and content aggregation tools built on the public API and RSS feeds will lose access as the endpoints shut down, and Reddit is offering no replacement for RSS consumption outside moderator communities — only moderators are being directed to the Discord Relay Devvit app for alerts. Developers who want to keep integrations working must register by January 12, 2027, with new public API access requests no longer accepted after October 31, 2026, or their apps and bots will be cut off when the API closes in March 2027.

<details><summary>References</summary>
<ul>
<li><a href="https://techcrunch.com/2026/09/30/reddit-is-killing-rss-feeds-ending-public-api-access-because-of-ai-bots/">Reddit is killing RSS feeds and ending public API ... | TechCrunch</a></li>
<li><a href="https://gigazine.net/gsc_news/en/20261001-reddit-killing-rss-feeds-end-public-api/">Reddit has announced it will discontinue RSS feeds and... - GIGAZINE</a></li>
<li><a href="https://www.linkedin.com/news/story/reddit-axes-rss-and-public-api-as-it-curbs-data-access-7631628/">Reddit axes RSS and public API as it curbs data access | LinkedIn</a></li>
<li><a href="https://daily.dev/posts/reddit-is-killing-rss-feeds-and-ending-public-api-access-because-of-ai-bots-etgqokzhb">Reddit is killing RSS feeds and ending public API access...</a></li>
<li><a href="https://www.unite.ai/reddit-sets-dates-to-retire-rss-feeds-and-close-public-api-access/">Reddit Sets Dates to Retire RSS Feeds and Close Public API Access</a></li>

</ul>
</details>

**Tags**: `#Reddit`, `#API`, `#RSS`, `#AI bots`, `#developer ecosystem`

---

<a id="item-tech-news-2"></a>
### [Netlify moves Edge Functions from hosted V8 isolates to Firecracker microVMs](https://www.netlify.com/blog/edge-functions-firecracker-microvms/) 🇺🇸 ⭐️ 7.0/10

Netlify has moved Edge Function execution from an externally hosted V8-isolate service to Firecracker microVMs built with Unikraft, which now run inside Netlify&\#x27;s own edge network. Per the company&\#x27;s post, requests previously went out to the hosted execution service and are now &quot;roughly 5x faster at the median&quot; on the microVM-based setup. The migration is described as already live for Edge Functions users. The 5x speedup is Netlify&\#x27;s self-reported median figure and has not been independently benchmarked.

hackernews · jbott · Sep 30, 18:17 · [Discussion](https://news.ycombinator.com/item?id=49912444)

**「From V8 isolates to microVMs」** Netlify&\#x27;s previous Edge Functions implementation used V8 isolates — isolated JavaScript execution contexts sharing a single V8 runtime process — with requests dispatched to an externally hosted execution service. Firecracker microVMs sit at a different point on the isolation-versus-overhead trade-off, giving each workload a lightweight virtual machine with its own kernel-level boundary, and Unikraft supplies the unikernel-based build tooling Netlify used to construct these small, fast-starting VMs. The conceptual shift is from many tenants sharing one runtime process to running self-operated microVMs inside Netlify&\#x27;s own edge network, which is what changed beneath the reported latency figures.

**「What it means for Edge Functions users」** Netlify Edge Functions users get the speedup with no migration or code changes required; the vendor reports warm invocations now complete in 5-6 ms versus 25-40 ms previously, P99 latency is 47.4% faster, and availability sits at 99.998%. These are self-reported figures, and one Hacker News commenter argues the median 5x gain mainly comes from eliminating a round-trip to a hosted execution service rather than faster function execution itself, so teams running latency-sensitive edge logic should benchmark the change against their own workloads before relying on the headline numbers.

**「Community discussion」** In the Hacker News thread, commenter yencabulator argued the post&\#x27;s wording suggests the gain may come from eliminating the round trip to the hosted execution service rather than faster function execution itself, calling the framing misleading, while nchmy questioned the baseline, noting Cloudflare Workers also run V8 isolates and are far faster than the 25–40ms latency the commenter attributed to Netlify&\#x27;s old service. A Unikraft engineer joined the discussion to answer questions about the microVM side and linked the company&\#x27;s own technical write-ups on the migration.

<details><summary>References</summary>
<ul>
<li><a href="https://www.netlify.com/blog/edge-functions-firecracker-microvms/">5 x faster Edge Functions : How we replaced v8 isolates with...</a></li>
<li><a href="https://byteiota.com/netlify-edge-functions-switch-to-firecracker-5x-faster/">Netlify Edge Functions Switch to Firecracker : 5 x Faster | byteiota</a></li>
<li><a href="https://www.netlify.com/blog/edge-functions-firecracker-microvms/">5x faster Edge Functions: v8 isolates to Firecracker MicroVMs</a></li>
<li><a href="https://byteiota.com/netlify-edge-functions-switch-to-firecracker-5x-faster/">Netlify Edge Functions Switch to Firecracker: 5x Faster</a></li>

</ul>
</details>

**Tags**: `#edge-computing`, `#serverless`, `#virtualization`, `#firecracker`, `#cloud-infrastructure`

---

<a id="item-tech-news-3"></a>
### [DEER plus generalized teacher forcing parallelizes nonlinear RNN training on chaotic series](https://www.reddit.com/r/MachineLearning/comments/1wuz2s4/parallelintime_training_of_recurrent_neural/) 🌍 ⭐️ 7.0/10

Authors posting on r/MachineLearning describe their paper as a NeurIPS 2026 spotlight, with an arXiv preprint, that combines the parallel-in-time method DEER with generalized teacher forcing \(GTF\) to train nonlinear RNNs on chaotic time series, reporting speedups of more than 100x. DEER already solved the RNN forward pass with Newton-type fixed-point iterations across the whole sequence length T, improving scaling from O\[T\] to O\[\(log T\)^2\] through GPU parallelization, but the post notes prior work found it breaks down under chaotic dynamics, where its runtime degrades to O\[T log T\]. The authors state that GTF stabilizes DEER by preventing divergence from chaotic dynamics and reducing the exposure bias of traditional teacher forcing, enabling stable parallel-in-time training on sequences longer than 10^6 steps from simulated and real-world chaotic systems. They further claim the method substantially outperforms Mamba and other state space models in the dynamical systems reconstruction setting; all speedup and comparison figures are author-reported and not independently verified.

reddit · r/MachineLearning · /u/DangerousFunny1371 · Oct 1, 13:12

**「Background」** Nonlinear RNNs were long considered inherently sequential to evaluate: transformers and linear state space models can run in parallel across time on modern hardware, but nonlinear recurrences could not. That changed when Lim et al. proposed DEER, which evaluates a nonlinear RNN in parallel by casting its states as the solution to a fixed-point problem solved with a parallel form of Newton&\#x27;s method, achieving significant speedups over sequential evaluation; follow-up work such as &quot;Towards Scalable and Stable Parallelization of Nonlinear RNNs&quot; has since examined which nonlinear state space models can be efficiently parallelized this way. The new paper builds on that line by targeting the limitation its authors identify — DEER breaking down under chaotic dynamics, where they report runtime degrading to O\[T log T\] — and stabilizes it with generalized teacher forcing, an earlier training technique that reduces exposure bias relative to standard teacher forcing used for state space models.

**「Impact」** For researchers who train nonlinear RNNs on long chaotic time series, the concrete consequence is a potentially much faster training route: the preprint \(arXiv:2605.12683\) and its Hugging Face paper page are already public, so groups doing dynamical systems reconstruction can attempt to reproduce the reported &gt;100x speedups on sequences longer than 10^6 steps. Adoption should be treated as unverified for now, since the speedup figures and the reported advantage over Mamba and other state space models are author-reported results, and the technique targets the specific bottleneck of sequential RNN training on chaotic dynamics rather than sequence-model training in general.

<details><summary>References</summary>
<ul>
<li><a href="https://openreview.net/forum?id=hBCxxVQDBw">Towards Scalable and Stable Parallelization of Nonlinear RNNs</a></li>
<li><a href="https://github.com/machine-discovery/deer">GitHub - machine-discovery/deer: Parallelizing non-linear ... Towards Scalable and Stable Parallelization of Nonlinear RNNs [2407.19115] Towards Scalable and Stable Parallelization of ... Predictability Enables Parallelization of Nonlinear State ... Towards Scalable and Stable Parallelization of Nonlinear RNNs Towards Scalable and Stable Parallelization of Nonlinear RNNs</a></li>
<li><a href="https://arxiv.org/html/2407.19115v3">Towards Scalable and Stable Parallelization of Nonlinear RNNs</a></li>
<li><a href="https://arxiv.org/abs/2605.12683">[2605.12683] Parallel-in-Time Training of Recurrent Neural ...</a></li>
<li><a href="https://huggingface.co/papers/2605.12683">Parallel-in-Time Training of Recurrent Neural Networks for ...</a></li>

</ul>
</details>

**Tags**: `#machine-learning`, `#RNN`, `#parallel-in-time`, `#dynamical-systems`, `#research-paper`

---

<a id="item-tech-news-4"></a>
### [Qwen-family LLMs emerge as the most common backbone across 100+ audio models](https://www.reddit.com/r/MachineLearning/comments/1wuctrt/qwenfamily_llms_are_quietly_becoming_the_backbone/) 🌍 ⭐️ 7.0/10

A Reddit user&\#x27;s architecture survey of more than 100 audio models, mapped in the audio.cpp project, found that Qwen-family LLMs are by far the most common language backbone: 32 audio model families build on Qwen architectures, and 20 of them use the Qwen3 LLM specifically. Qwen-based models now appear well beyond text-to-speech, spanning speech synthesis, ASR/audio understanding, music generation, speech-to-speech, and audio/video systems. The post includes a Task × Technology Matrix showing which building blocks power which types of audio models. As informal community-sourced survey work, the methodology is not described in detail, so the counts should be read as a practitioner&\#x27;s ecosystem mapping rather than an independently verified study.

reddit · r/MachineLearning · /u/Acceptable-Cycle4645 · Sep 30, 18:31

**「Language backbones in audio models」** Modern audio models are typically assembled around a pretrained text LLM: audio tokenizers or codecs convert sound into discrete tokens, and the LLM — the language backbone — generates or interprets those tokens for tasks such as speech synthesis, speech recognition, music generation, and speech-to-speech. The survey behind this post is based on audio.cpp, an open-source pure C++ inference project whose latest release covers 80+ audio model families and 120+ model variants, including a qwen3\_tts entry and the 100M-parameter multilingual PocketTTS. Qwen is Alibaba&\#x27;s family of open-weight LLMs, and Qwen3 is one of its recent generations whose downloadable weights audio teams can fine-tune directly as a ready-made backbone.

**「What this means for audio developers」** For practitioners choosing a base LLM for a new audio project, the survey suggests Qwen3 is a pragmatic default to evaluate first rather than building a custom backbone; Qwen&\#x27;s own Qwen3-TTS demo on Hugging Face lets you trial voice cloning and style-described voice creation directly before committing. Teams with strict size or on-device constraints should note the contrasting option: Supertonic 3 is a 99M-parameter open-weight TTS model that runs locally on CPU via ONNX Runtime.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/0xShug0/audio.cpp">GitHub - 0xShug0/ audio . cpp : An all-in-one, pure C++ inference...</a></li>
<li><a href="https://huggingface.co/spaces/Qwen/Qwen3-TTS">Qwen 3 - TTS Demo - a Hugging Face Space by Qwen</a></li>
<li><a href="https://supertonic3.github.io/">Supertonic 3 — Lightning-Fast, On-Device, Multilingual TTS</a></li>

</ul>
</details>

**Tags**: `#Qwen`, `#LLM`, `#audio-models`, `#TTS`, `#architecture-survey`

---

<a id="item-tech-news-5"></a>
### [OpenAI disrupts model distillation campaign, links it to Moonshot AI personnel](https://openai.com/index/disrupting-a-coordinated-model-distillation-campaign/) 🇺🇸 ⭐️ 7.0/10

OpenAI says it disrupted a coordinated model distillation campaign in which attackers manipulated interactions to extract protected reasoning outputs, attributing the core activity to individuals linked to Moonshot AI, the developer of the Kimi models. According to OpenAI, the activity first appeared in early July 2026 and peaked on July 24–25 with more than 16,000 requests from over 4,000 users, and activity tied to more than 15,000 users had been disrupted by July 28. OpenAI states it shared its findings with industry and government through channels including the Frontier Model Forum. The attribution to Moonshot AI-linked individuals is OpenAI&\#x27;s claim from its own announcement, relayed here via a secondhand Telegram summary; no response from Moonshot AI or independent verification is included.

telegram · zaihuapd · Oct 1, 01:18

**「Background: adversarial distillation」** Model distillation is a common training technique in which one AI model learns from another model&\#x27;s outputs; OpenAI describes the unauthorized variant as &quot;adversarial distillation&quot; — the systematic use of one model&\#x27;s outputs or reasoning to help train, reproduce, or improve another model. The specific asset at stake is &quot;protected reasoning&quot;: the step-by-step reasoning that reasoning models generate internally before producing an answer. Moonshot AI, the Chinese developer of the Kimi model, competes directly with OpenAI in AI reasoning models, which is what makes the attribution significant.

**「Shared indicators and enforcement risk for reasoning-model operators」** For providers of frontier reasoning models, the disclosure sets a concrete enforcement and detection precedent: OpenAI said in its September 30, 2026 post that it shut down related activity from more than 15,000 users within roughly a month of the campaign&\#x27;s early-July emergence and shared findings with industry and government through the Frontier Model Forum, giving other labs indicators for the same kind of interaction manipulation, which reporting describes as a novel bypass of the encryption protecting chain-of-thought output. Teams that automate large-scale extraction of hidden reasoning from commercial APIs face demonstrable account-level enforcement, since this case shows action can arrive within weeks of the activity starting. For Moonshot AI, OpenAI&\#x27;s attribution of &\#x27;a core cluster&\#x27; of the activity to individuals associated with the company — while stating it is unclear whether all observed operators originated from a single actor — creates public reputational exposure for the Kimi developer even though OpenAI does not claim the company itself directed the campaign.

<details><summary>References</summary>
<ul>
<li><a href="https://openai.com/index/disrupting-a-coordinated-model-distillation-campaign/">Disrupting a coordinated model-distillation campaign | OpenAI</a></li>
<li><a href="https://www.bankinfosecurity.com/openai-accuses-moonshot-ai-coordinated-model-distillation-a-32982">OpenAI Accuses Moonshot AI of Coordinated Model Distillation</a></li>
<li><a href="https://cyberscoop.com/openai-moonshot-ai-model-distillation-attack/">OpenAI reveals ‘novel’ encryption bypass used in distillation ...</a></li>
<li><a href="https://openai.com/index/disrupting-a-coordinated-model-distillation-campaign/">Disrupting a coordinated model-distillation campaign | OpenAI</a></li>
<li><a href="https://cellcog.ai/blog/openai-moonshot-distillation/">OpenAI Distillation Campaign: What It Says About Moonshot</a></li>
<li><a href="https://cyberscoop.com/openai-moonshot-ai-model-distillation-attack/">OpenAI reveals ‘novel’ encryption bypass used in distillation ...</a></li>

</ul>
</details>

**Tags**: `#OpenAI`, `#model distillation`, `#AI security`, `#Moonshot AI`, `#frontier models`

---

## Financial News

<a id="item-finance-news-1"></a>
### [Report: Tencent Leases 100,000 AI Chips from Oracle for About $7 Billion](https://www.ft.com/content/8799b33d-f07c-4a03-82f0-bf5d3d1d29e9) 🇨🇳 ⭐️ 8.0/10

Tencent has reportedly signed a roughly $7 billion, five-year lease with Oracle for about 100,000 advanced AI chips, which US export rules bar Chinese firms from buying outright but allow them to rent abroad, per the Financial Times and Reuters. The chips are slated for data centers in Southeast Asia to speed up Tencent&\#x27;s AI model and agent development, with about 30% of the payment due upfront.

telegram · zaihuapd · Oct 1, 05:07

**「Background」** US export rules ban Chinese companies from directly buying advanced AI chips but have not restricted renting that computing power through data centers abroad, a route ByteDance, Alibaba and Tencent have already used — Tencent reportedly leased about 15,000 Nvidia Blackwell chips in Japan last December in a roughly $1.2 billion deal. The Bureau of Industry and Security, the US agency that administers export controls, is now reviewing whether to curb such offshore rentals.

**「Impact」** US rules bar Chinese firms from buying advanced AI chips directly but allow leasing them abroad, so the deal gives Tencent a legal route to processors unavailable in China while adding a major customer to Oracle&\#x27;s cloud unit, which projects AI-driven infrastructure revenue of $114 billion by fiscal 2029.

<details><summary>References</summary>
<ul>
<li><a href="https://www.zerohedge.com/markets/tencent-rents-100000-ai-chips-cash-strapped-oracle-huge-discount-7bn-deal">Tencent Rents 100 , 000 AI Chips At Huge Discount From... | ZeroHedge</a></li>
<li><a href="https://www.techtimes.com/articles/323532/20260807/bis-targets-legal-cloud-compute-china-ai-firms-bypass-export-controls.htm">BIS Targets Legal Cloud Compute as China AI Firms Bypass ...</a></li>
<li><a href="https://www.ft.com/content/8799b33d-f07c-4a03-82f0-bf5d3d1d29e9?syn-25a6b1a6=1">China ’s Tencent leases 100,000 chips from Oracle to accelerate AI ...</a></li>
<li><a href="https://www.linkedin.com/pulse/massive-demand-growth-ai-infrastructure-hardware-new-arms-race-kjlwf">Massive Demand Growth for AI Infrastructure Hardware: The New...</a></li>

</ul>
</details>

**Tags**: `#AI芯片`, `#腾讯`, `#甲骨文`, `#美国出口管制`, `#云计算`

---