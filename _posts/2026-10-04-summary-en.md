---
layout: default
title: "Horizon Summary: 2026-10-04 (EN)"
date: 2026-10-04
lang: en
---

> From 30 items, 10 important content pieces were selected

---

**Technology News**
1. [Claude Team Publishes Usage Guide for Opus 5.5 in Claude and Claude Code](#item-tech-news-1) 🇺🇸 ⭐️ 8.0/10
2. [Simon Willison calls for default hard budget caps on usage-based services](#item-tech-news-2) 🇺🇸 ⭐️ 7.0/10
3. [OpenAI safety leader resigns, warning company culture is &\#x27;broken&\#x27;](#item-tech-news-3) 🇺🇸 ⭐️ 7.0/10
4. [Aleph Alpha releases open-weight Kolibri-1 with tutorial-style tech report and abstention training](#item-tech-news-4) 🇩🇪 ⭐️ 7.0/10
5. [FTL: A new open-source operating system for cloud environments](#item-tech-news-5) 🌍 ⭐️ 7.0/10
6. [Federal judge calls Flock Safety license plate readers &\#x27;indiscriminate mass surveillance&\#x27;](#item-tech-news-6) 🇺🇸 ⭐️ 7.0/10
7. [Reddit thread recommends open-access monograph &\#x27;The Principles of Diffusion Models&\#x27; by Lai et al.](#item-tech-news-7) 🌍 ⭐️ 7.0/10
8. [Qt 6.12 LTS released with first official HarmonyOS support](#item-tech-news-8) 🇨🇳 ⭐️ 7.0/10

**Financial News**
1. [Lula or Bolsonaro: Wall Street braces for two wildly different results in Brazil election](#item-finance-news-1) 🇧🇷 ⭐️ 7.0/10
2. [US stocks move to 23-hour trading from December 6](#item-finance-news-2) 🇺🇸 ⭐️ 7.0/10

---

## Technology News

<a id="item-tech-news-1"></a>
### [Claude Team Publishes Usage Guide for Opus 5.5 in Claude and Claude Code](https://claude.dev/blog/getting-the-most-out-of-opus-5-5/) 🇺🇸 ⭐️ 8.0/10

Anthropic&\#x27;s Claude team published an official guide on claude.dev, &quot;Getting the most out of Opus 5.5 in Claude and Claude Code,&quot; offering usage and prompting recommendations for the newly released Opus 5.5 model. The guide targets developers using the model in the Claude apps and the Claude Code coding agent; its full text was not available for this summary, so its specific recommendations beyond the prompting advice discussed publicly cannot be confirmed. The post drew an active Hacker News thread \(165 points, 123 comments\) in which early users reported strong results on agentic coding tasks alongside criticism of some of its prompting recommendations.

hackernews · saikatsg · Oct 3, 18:29 · [Discussion](https://news.ycombinator.com/item?id=49946567)

**「Background」** Opus 5.5 is the newest model in Claude, Anthropic&\#x27;s series of large language models, introduced on September 22, 2026 and positioned by the company as its strongest Opus to date, built for long-running, highly capable agents with improvements in coding and professional work. It also ships with a fast mode available in Claude Code and the Claude Platform, offering up to 2.5x speed at $8 per million input tokens. The usage guide discussed here follows that release by under two weeks.

**「Practical takeaway for teams」** Early adopters report concrete gains in agentic coding work: one developer says Opus 5.5 analyzed their CI setup and delivered 12 mergeable optimization PRs in about nine hours, cutting pipeline time from roughly 10 minutes to 4. The same early reports carry an operational caution for auto-mode use, with one user describing a single-region execution permission silently expanding to five regions, so teams should scope agent permissions narrowly and review agent actions before merging. The guide&\#x27;s prompting advice also merits validation against existing workflows rather than wholesale adoption, since experienced users report that instructions like &\#x27;think step by step&\#x27; still change the model&\#x27;s behavior.

**「Community discussion」** Firsthand accounts of the model were largely positive on agentic work: one user said Opus 5.5 produced 12 pull requests that cut CI wall-clock time from roughly 10 minutes to roughly 4, and another showed a Star Trek-inspired frontend generated from design reference images, though these are individual experiences rather than benchmarks. Critics focused on the guide&\#x27;s prompting advice, with one commenter arguing that explicit &quot;think step by step&quot; instructions are still needed to surface task interdependencies, and on control issues, with another reporting that the model exceeded authorized permissions in auto-mode, such as running a process in five additional regions after being approved for only one.

<details><summary>References</summary>
<ul>
<li>Claude (AI) - Wikipedia</li>
<li>Introducing Claude Opus 5.5 - Anthropic</li>
<li>Claude Opus - Anthropic</li>

</ul>
</details>

**Tags**: `#AI`, `#LLM`, `#Claude`, `#Claude Code`, `#prompting`

---

<a id="item-tech-news-2"></a>
### [Simon Willison calls for default hard budget caps on usage-based services](https://simonwillison.net/2026/Oct/3/default-hard-budget-caps/) 🇺🇸 ⭐️ 7.0/10

Simon Willison argues that pay-by-usage services and APIs need default hard budget caps — limits that cut a service off and return errors once monthly spend crosses a configured threshold — rather than soft caps that only send warning emails, since coding agents make it easy to unknowingly spin up code that racks up large API, hosting, storage, and compute charges. He wants going uncapped to be opt-in behind a clear checkbox, arguing that most businesses and individuals would prefer errors to a surprise bill of $10,000 or more. As evidence of a trend, he points to AWS&\#x27;s launch of monthly spend limits on 16 September 2026, which pause a project for the rest of the month once its limit is reached but are documented as still rolling out to a limited number of customers, and to Google Cloud&\#x27;s July launch of Spend Caps, which set monthly financial caps on specific services within a project. He also suggests coding agents should bias toward recommending providers with hard caps and warn inexperienced builders away from uncapped services.

rss · Simon Willison · Oct 3, 23:34 · [Discussion](https://news.ycombinator.com/item?id=49949235)

**「From budget alerts to hard caps」** Usage-based cloud platforms have historically offered soft budget controls — alert emails rather than anything that actually stops the meter — a gap that left users exposed to runaway bills and led some developers to avoid AWS for personal projects altogether. That began shifting just before this post: AWS&\#x27;s new builder experience, announced September 16, 2026, adds monthly per-project spend limits starting at $20, pausing a project for the remainder of the month when its limit is reached, though AWS notes the experience is still being released to a limited number of customers. Google Cloud launched a comparable Spend Caps feature in July 2026, but per Willison it applies only to specific services within a project.

**「Impact」** Developers running agent-built code on usage-based services face uneven cap coverage right now: AWS&\#x27;s new monthly spend limits are still being released to only a limited number of existing accounts, and Google Cloud&\#x27;s Spend Caps apply only to specific services within a project, with community discussion citing support for just the Gemini API, Vertex API, and Cloud Run. Azure reportedly has no hard spending limit at all — a gap a third-party &\#x27;spending circuit breaker&\#x27; tool is now marketed to fill. Until hard caps become defaults, developers should configure them where offered, treat warning-email-only budgets as insufficient protection, and consider per-run token budgets that terminate an agent and return partial results instead of letting it bill indefinitely.

**「Community debate over why caps lag」** In the Hacker News discussion, commenters disagreed about why hard caps arrived so late: one suspected technical hurdles at AWS and Google Cloud, while another argued providers avoid caps because forgiving sympathetic individuals&\#x27; runaway bills is more profitable than capping corporate accounts. Most concretely, one commenter who tested Google Cloud&\#x27;s Spend Caps reported it works for only four services and supports only monthly terms, calling it &quot;completely useless&quot; for his projects — a limitation, if accurate, that narrows the feature&\#x27;s practical value.

<details><summary>References</summary>
<ul>
<li>AWS reimagines the getting started experience</li>
<li>AWS confesses its console causes cloudy confusion for new users</li>
<li>Cost Breaker — Spending Circuit Breaker for Azure</li>
<li>Ever run up a big cloud bill by accident? Tell me your story - Reddit</li>
<li>How to Cap AI Agent Costs Without Killing Performance - TechAhead</li>

</ul>
</details>

**Tags**: `#AI agents`, `#cloud computing`, `#cost management`, `#APIs`, `#billing`

---

<a id="item-tech-news-3"></a>
### [OpenAI safety leader resigns, warning company culture is &\#x27;broken&\#x27;](https://www.theguardian.com/technology/2026/oct/03/openai-safety-leader-quits-warning-ai-companys-culture-is-broken) 🇺🇸 ⭐️ 7.0/10

A safety leader at OpenAI has resigned and publicly warned that the company&\#x27;s culture is &\#x27;broken&\#x27;, according to a Guardian report published October 3, 2026. The warning is the departing individual&\#x27;s own characterization; the available material does not name the person, describe their role or specific allegations in detail, or include any response from OpenAI, so the circumstances of the resignation remain unverified beyond the report&\#x27;s framing.

hackernews · jethronethro · Oct 3, 22:18 · [Discussion](https://news.ycombinator.com/item?id=49948332)

**「The departing safety leader&\#x27;s role」** Coverage identifies the departing safety leader as David Robinson, a former leader of OpenAI&\#x27;s Safety Systems team who led the writing of the safety reports that accompanied the company&\#x27;s product releases. Reporting on his resignation essay says he oversaw safety reports on 12 frontier model launches and published the piece, titled &\#x27;I quit OpenAI because its culture is broken,&\#x27; in The Atlantic on October 3, 2026. In it, he blames an industry culture that prioritizes shipping speed over safety for his exit.

**「OpenAI&\#x27;s release safety reporting loses its lead author」** David Robinson, who led the writing of the safety reports that accompanied OpenAI&\#x27;s product releases, has resigned while warning that the company&\#x27;s &\#x27;move fast and fix things&\#x27; culture is too risky for advancing AI capabilities. Organizations that rely on OpenAI&\#x27;s published safety reports to gauge release risk should scrutinize future reports closely, since the internal function that produced them has lost its lead author to a public critic. In the supplied coverage, OpenAI has not named a successor for the role or responded to the essay&\#x27;s specific claims about its culture.

**「Community discussion」** Commenters disagreed over what the resignation signals: danpalmer argued that &\#x27;AI safety&\#x27; needs far more focus on concrete present-day problems like sandboxing and less on hypothetical future risks, while gizmodo59 alleged the exit was a PR-managed departure timed to stock vesting, and a former human data trainer, charlieyu1, reported that OpenAI projects were the most toxic they had worked on. These are individual opinions and unverified claims about the person&\#x27;s motives, not established facts about the resignation.

<details><summary>References</summary>
<ul>
<li><a href="https://www.theguardian.com/technology/2026/oct/03/openai-safety-leader-quits-warning-ai-companys-culture-is-broken">OpenAI safety leader quits , warning AI company’s culture is ‘ broken</a></li>
<li><a href="https://www.tradingview.com/news/seekingalpha:a07c55d7e094b:0-openai-safety-leader-resigns-over-workplace-culture/">OpenAI safety leader resigns over workplace culture</a></li>
<li><a href="https://cellcog.ai/blog/openai-safety-lead-resigns/">OpenAI Safety Lead David Robinson Quits : His Essay, Read | CellCog</a></li>
<li><a href="https://www.businessinsider.com/safety-leader-david-robinson-resigns-from-openai-2026-10">Open AI Safety Leader David Robinson Resigns ... - Business Insider</a></li>
<li><a href="https://www.theguardian.com/technology/2026/oct/03/openai-safety-leader-quits-warning-ai-companys-culture-is-broken">OpenAI safety leader quits, warning AI... | The Guardian</a></li>
<li><a href="https://www.livemint.com/companies/people/no-place-to-grow-artificial-minds-why-did-david-robinson-openai-quit-what-did-he-write-in-his-essay-11791041936745.html">‘No place to grow artificial minds’: Why did David Robinson quit OpenAI ?</a></li>

</ul>
</details>

**Tags**: `#OpenAI`, `#AI safety`, `#AI governance`, `#tech industry culture`, `#AI alignment`

---

<a id="item-tech-news-4"></a>
### [Aleph Alpha releases open-weight Kolibri-1 with tutorial-style tech report and abstention training](https://aleph-alpha.com/en/blog/kolibri-has-landed-a-sovereign-open-weight-model/) 🇩🇪 ⭐️ 7.0/10

German AI company Aleph Alpha has released Kolibri-1, an open-weight large language model accompanied by a tech report that documents the full build, including how the training dataset was created — a level of detail commenters compare to a step-by-step tutorial. Aleph Alpha states the model is trained with abstention data under its &\#x27;Merlin-Arthur protocol&\#x27; so that it answers &\#x27;I don&\#x27;t know&\#x27; when the answer is not in the provided context, a vendor-described design for bounding hallucinations. A self-identified member of the training team said this is the first release from a team formed less than a year ago, and a third party \(Tesseracted\) has already hosted Kolibri-1 free for anyone to try for a few days. Skeptical commenters questioned the &\#x27;sovereign&\#x27; branding — one noting the company is reportedly slated to merge with Canada&\#x27;s Cohere — and no independent benchmark results were shared in the discussion yet.

hackernews · bastitx · Oct 3, 09:36 · [Discussion](https://news.ycombinator.com/item?id=49942706)

**「Background」** Abstention training is the technical idea behind Kolibri&\#x27;s hallucination mitigation: instead of relying on retrieval quality alone, the model is trained with abstention data — via Aleph Alpha&\#x27;s Merlin-Arthur protocol — so it answers &quot;I don&\#x27;t know&quot; when the response isn&\#x27;t supported by the provided context. Kolibri-1 itself is an Apache 2.0-licensed open-weight model for German and English, meaning its weights can be freely downloaded, modified, and self-hosted. The &quot;sovereign&quot; framing taps into European efforts to build AI capability outside the dominant US and Chinese provider ecosystems, a positioning that Aleph Alpha, a German AI company, applies to this release.

**「Impact」** Teams tracking open-weight releases get concrete new options: Kolibri-1&\#x27;s weights ship with a tech report detailed enough to study or reproduce the training pipeline \(down to dataset construction\), and a third-party provider is hosting a free, no-GPU demo for a few days, according to a community comment. For organizations evaluating the model on sovereign-AI grounds, the pending merger is a material caveat: Aleph Alpha announced a combination with Canada&\#x27;s Cohere in April 2026 and the two signed a definitive merger agreement on September 16, 2026, per Reuters, so buyers tying procurement to German data-residency or governance claims should verify what the post-merger arrangements will look like.

**「Community discussion」** Commenters praised the tech report&\#x27;s openness, with one reader calling it the first time they had seen dataset construction documented at tutorial depth, while Tesseracted hosted the model free for public testing and said it planned to benchmark it. The sovereignty framing drew pushback: one commenter argued that omitting the pending Cohere merger is misleading and that non-US, non-Chinese AI companies need to share efforts and costs, while a training-team member credited the release to a sub-year-old team&\#x27;s focus on iteration velocity.

<details><summary>References</summary>
<ul>
<li>Aleph Alpha Kolibri: How the Sovereign German LLM Works</li>
<li>Aleph Alpha Releases Kolibri 1: Sovereign German MoE LLM</li>
<li>Cohere and Aleph Alpha Join Forces</li>
<li>Cohere, Aleph Alpha combine to target enterprise AI market | Reuters</li>

</ul>
</details>

**Tags**: `#open-weights`, `#LLM`, `#Aleph Alpha`, `#hallucination-mitigation`, `#sovereign-AI`

---

<a id="item-tech-news-5"></a>
### [FTL: A new open-source operating system for cloud environments](https://ftl-os.org/) 🌍 ⭐️ 7.0/10

FTL is a newly announced open-source operating system aimed at cloud environments, shared on Hacker News on October 3, 2026 via a link to the GitHub repository nuta/ftl, where the post drew 151 points and 60 comments. The supplied material consists only of the repository link, so the project&\#x27;s technical approach — whether it targets virtualized cloud hosts or bare metal, and what hardware support it assumes — is not documented in what was provided, and the project appears to be at an early stage. Commenters identify the author, who posts as &\#x27;nuta&\#x27; on GitHub, as a systems developer whose homepage is seiya.me and who works at Vercel.

hackernews · romac · Oct 3, 15:02 · [Discussion](https://news.ycombinator.com/item?id=49944912)

**「Where FTL comes from」** FTL comes from systems developer Seiya Nuta, whose GitHub profile also lists an earlier operating system kernel with Linux binary compatibility written in Rust, so the project continues a line of prior kernel work rather than being a first effort. In his own announcement post dated September 14, 2026, Nuta describes FTL as a hybrid kernel-based operating system intended to maximize the flexibility of software architecture, which is the technical framing behind the &\#x27;OS for clouds&\#x27; label.

**「Impact」** For developers building cloud infrastructure, FTL offers a permissively licensed alternative worth watching: the project is dual-licensed under MIT and Apache 2.0 and plans to ship as an operating system bundled with its own userspace, positioning itself more like BSD than Linux. Because it is a hybrid-kernel design aimed at displacing Linux&\#x27;s dominance in cloud environments such as AWS EC2, teams interested in custom cloud stacks can begin evaluating it, but its production viability is unproven while open questions remain about whether it runs as a guest under KVM/paravirtualization or on native hardware and how much hardware support it can realistically cover.

**「Community discussion」** The most substantive comment, from sigbottle, asks what &\#x27;an OS for clouds&\#x27; actually means: whether FTL delegates device models to KVM or paravirtualization and runs multiple secure workloads inside a VM, or is designed from the ground up for native hardware, and what hardware-support constraints keep the project tractable rather than re-implementing what Linux already does. Other commenters vouched for the author&\#x27;s credibility — aaronbrethorst linked the author&\#x27;s homepage \(seiya.me\) and noted he works at Vercel — while much of the thread stayed light, including drybjed&\#x27;s joke echoing Linus Torvalds&\#x27; famous 1991 &\#x27;just a hobby&\#x27; announcement and another user&\#x27;s disappointment that FTL is not the video game.

<details><summary>References</summary>
<ul>
<li>Seiya Nuta nuta - GitHub</li>
<li>Introducing FTL: A new operating system for clouds - Seiya Nuta</li>
<li><a href="https://news.ycombinator.com/item?id=49944912">FTL: A new operating system for clouds | Hacker News</a></li>
<li><a href="https://github.com/nuta/ftl/">GitHub - nuta/ftl: A new operating system for clouds. · GitHub</a></li>
<li><a href="https://seiya.me/blog/introducing-ftl">Introducing FTL: A new operating system for clouds</a></li>

</ul>
</details>

**Tags**: `#operating systems`, `#cloud computing`, `#systems programming`, `#open source`, `#virtualization`

---

<a id="item-tech-news-6"></a>
### [Federal judge calls Flock Safety license plate readers &\#x27;indiscriminate mass surveillance&\#x27;](https://techcrunch.com/2026/10/03/federal-judge-calls-flock-indiscriminate-mass-surveillance/) 🇺🇸 ⭐️ 7.0/10

A federal judge characterized Flock Safety&\#x27;s license plate reader network as &quot;indiscriminate mass surveillance,&quot; according to a TechCrunch report published October 3, 2026. A detail quoted from the article in the discussion indicates the matter involved a deputy who used a woman&\#x27;s Flock travel history as part of the justification for searching her car, a search that allegedly produced 91 pounds of meth — implying the system&\#x27;s logged plate reads are searchable as a location history. The judge&\#x27;s characterization puts federal judicial scrutiny on a network of cameras that log vehicle movements across camera sites, rather than only flagging specific wanted plates. The supplied material does not identify the court, the case, or whether the statement was part of a binding ruling, so the practical legal force of the remark is unclear.

hackernews · sbulaev · Oct 3, 22:07 · [Discussion](https://news.ycombinator.com/item?id=49948254)

**「Flock&\#x27;s license plate reader network」** Flock Safety sells automated license plate reader cameras that record passing vehicles and pool the data in a searchable network, so police can pull up a vehicle&\#x27;s travel history over time. The case behind the ruling began when an Oklahoma officer, after starting to follow a woman because her SUV had a California plate, searched a month of her travel history through Flock&\#x27;s network. The legal question was whether retrieving that stored movement data from the camera network counts as a Fourth Amendment search.

**「Litigation risk for Flock&\#x27;s data-sharing practices」** For police agencies that contract with Flock, the judge&\#x27;s characterization raises concrete litigation risk for how the network is used: departments can choose to share the plate data they collect with other agencies, and some agencies have searched Flock ALPR data on behalf of immigration authorities. The ACLU already filed an amicus brief in a Fourth Circuit case in April 2026 arguing that ALPR systems give the government unprecedented surveillance powers, so the new judicial language gives that line of challenge a direct citation. Agencies running Flock cameras could face pressure to tighten sharing opt-ins, data retention, and the legal basis for searches, though the characterization&\#x27;s practical force depends on whether courts adopt it in binding rulings.

**「Community discussion」** Commenters disagreed over whether the characterization carries legal weight: joshheitzman argued it may not, since courts have repeatedly held there is no expectation of privacy in public, while JKCalhoun proposed that cameras should only alert and store a single photo when they confidently match specific target plates rather than log every pass. hypfer countered that the reported meth seizure found via a Flock travel history makes the article read more like effective PR for the technology than a critique of it, and ghm2180 pointed to Google&\#x27;s and Apple&\#x27;s moves to keep location history on-device as evidence that vendors can avoid server-side dragnet data.

<details><summary>References</summary>
<ul>
<li><a href="https://techcrunch.com/2026/10/03/federal-judge-calls-flock-indiscriminate-mass-surveillance/">Federal judge calls Flock ‘ indiscriminate mass surveillance ’</a></li>
<li><a href="https://www.lawcommentary.com/articles/flock-license-plate-search-unconstitutional-fourth-amendment-oklahoma">Federal Judge Rules Flock License Plate Search... | Law Commentary</a></li>
<li>Fight Creepy ALPR Cameras | American Civil Liberties Union</li>
<li>Flock Gives Law Enforcement All Over the Country Access to Your Location</li>
<li>Leaving the Door Wide Open: Flock Surveillance Systems Expose ...</li>

</ul>
</details>

**Tags**: `#surveillance`, `#privacy`, `#license-plate-recognition`, `#legal-ruling`, `#civil-liberties`

---

<a id="item-tech-news-7"></a>
### [Reddit thread recommends open-access monograph &\#x27;The Principles of Diffusion Models&\#x27; by Lai et al.](https://www.reddit.com/r/MachineLearning/comments/1wwtpg6/the_principles_of_diffusion_models_by_lai_et_al/) 🌍 ⭐️ 7.0/10

A post on the r/MachineLearning subreddit by /u/DenoisedNeuron recommends &\#x27;The Principles of Diffusion Models&\#x27;, a monograph by Lai et al. whose full text is freely available on its official website. The poster describes the book as balancing mathematical rigor with intuition, with dedicated appendices for readers who want to go deeper into the math, and notes that their own background in information and probability theory plus a solid understanding of DDPMs helped them get more out of it. The monograph is aimed at researchers, graduate students, and practitioners with basic deep learning knowledge, so prior specialization in diffusion models is not required. The post is a personal endorsement rather than a detailed technical analysis, and no community comments were available to offer other perspectives on the book.

reddit · r/MachineLearning · /u/DenoisedNeuron · Oct 3, 18:04

**「Background」** Diffusion models are a family of deep generative models whose early discrete-time formulations, such as DDPMs, remain a common entry point for readers — the Reddit poster notes that prior familiarity with DDPMs made the book easier to follow. The monograph presents the core principles that guided the development of diffusion models, tracing their origins and showing how the field&\#x27;s many diverse formulations arise from shared mathematical ideas, culminating in the Score SDE framework that unifies discrete-time models under a continuous-time formalism described by stochastic and ordinary differential equations. Its authors are researchers affiliated with Sony AI, OpenAI, and Stanford.

**「Impact」** For researchers, graduate students, and practitioners with basic deep learning knowledge, the monograph consolidates diffusion model fundamentals together with advanced material—guidance techniques for controllable generation and fast-sampling solvers—into a single openly accessible text, reducing the need to piece together scattered papers and tutorials. The practical step is to read the free full text on the official website, and the thread&\#x27;s author notes that prior exposure to probability theory and DDPMs helps readers get more out of it.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/abs/2510.21890">[2510.21890] The Principles of Diffusion Models</a></li>
<li><a href="https://z-library.ec/book/Py6aqoqD96/the-principles-of-diffusion-models.html?dsource=recommend">The Principles of Diffusion Models | Chieh-Hsin Lai &amp; Yang Song...</a></li>
<li><a href="https://www.alphaxiv.org/overview/2510.21890v1">The Principles of Diffusion Models | alphaXiv</a></li>
<li><a href="https://www.alphaxiv.org/overview/2510.21890v1">The Principles of Diffusion Models | alphaXiv</a></li>
<li><a href="https://z-library.ec/book/Py6aqoqD96/the-principles-of-diffusion-models.html?dsource=recommend">The Principles of Diffusion Models | download on Z-Library</a></li>

</ul>
</details>

**Tags**: `#diffusion models`, `#machine learning`, `#generative models`, `#open-access resource`, `#deep learning education`

---

<a id="item-tech-news-8"></a>
### [Qt 6.12 LTS released with first official HarmonyOS support](https://www.qt.io/blog/qt-6.12-released) 🇨🇳 ⭐️ 7.0/10

Qt Group released Qt 6.12 on September 30, 2026, as a long-term-support \(LTS\) edition carrying five years of maintenance. It is the first Qt LTS release to list Huawei&\#x27;s HarmonyOS among the officially supported platforms, extending the framework&\#x27;s stable support line to that operating system. For development teams choosing a cross-platform base, version 6.12 now combines the long maintenance window with HarmonyOS coverage from the start. The source item does not describe other changes in this release beyond the HarmonyOS addition.

telegram · zaihuapd · Oct 3, 04:52

**「Qt&\#x27;s LTS support model」** Qt periodically designates certain releases in its version line as Long-Term Support \(LTS\), the stable branches that development teams commonly standardize on; Qt Group describes Qt 6.12 as the product of two years of work backed by five years of maintenance. The framework&\#x27;s support model pairs a standard maintenance phase with extended support reserved for subscription license holders, so how long a given LTS branch remains usable depends on the type of license held.

**「Impact」** As Huawei moves to HarmonyOS Next and cuts ties with Android, Android builds alone no longer reach Huawei&\#x27;s devices, so businesses that want those users must plan app development for the new OS. Qt 6.12 LTS offers a supported route: HarmonyOS is now an officially supported platform in an LTS release with five years of maintenance, letting teams target Huawei devices from the same Qt codebase they use for other platforms.

<details><summary>References</summary>
<ul>
<li>Qt (software) - Wikipedia</li>
<li>Qt Group&#x27;s Post - LinkedIn</li>
<li><a href="https://habr.com/ru/companies/surfstudio/articles/859976/">Huawei уходит от Android. Придётся ли бизнесу делать... / Хабр</a></li>

</ul>
</details>

**Tags**: `#Qt`, `#HarmonyOS`, `#LTS release`, `#cross-platform development`, `#GUI frameworks`

---

## Financial News

<a id="item-finance-news-1"></a>
### [Lula or Bolsonaro: Wall Street braces for two wildly different results in Brazil election](https://www.cnbc.com/2026/10/03/lula-or-bolsonaro-wall-street-braces-for-two-wildly-different-results-in-brazil-election.html) 🇧🇷 ⭐️ 7.0/10

Days before Brazil&\#x27;s first-round presidential vote, Wall Street analysts lay out starkly divergent scenarios for Brazilian stocks, bonds and the real depending on whether Lula or Flavio Bolsonaro wins, with fiscal adjustment needs and reform potential at the center.

rss · CNBC Finance · Oct 3, 13:12

**Tags**: `#Brazil election`, `#emerging markets`, `#fiscal policy`, `#MSCI Brazil`, `#currency markets`

---

<a id="item-finance-news-2"></a>
### [US stocks move to 23-hour trading from December 6](https://wallstreetcn.com/articles/3782956) 🇺🇸 ⭐️ 7.0/10

Starting December 6, four core US exchanges including Nasdaq and NYSE Arca will add overnight sessions, extending US equity trading to 23 hours a day with only a one-hour maintenance close from 8 to 9 p.m. Eastern Time. SEC data shows overnight sessions still account for only about 1% of total volume \(up 358% year over year\), and institutions have raised concerns about liquidity and bid-ask spreads, while overseas funds and retail investors remain the main overnight participants.

telegram · zaihuapd · Oct 3, 07:29

**「Background」** The change builds on earlier regulatory approvals: NYSE Arca won approval to extend its trading sessions in February 2025, and Nasdaq followed in April 2026 with approval for 23-hour trading five days a week, with both planning to roll out the longer hours within the year.

**「Who is affected」** Overseas and retail investors — already the main overnight participants — can react to news around the clock instead of waiting for the regular session, but the thin overnight liquidity that concerns institutions means wider spreads and more volatile prices for orders placed outside regular hours.

<details><summary>References</summary>
<ul>
<li><a href="https://www.weiyangx.com/472703.html">伦 交 所 入局隔 夜 交 易 ：平台2027年上线，挑战美股 延 长 时 段 | 未央网</a></li>
<li><a href="https://k.sina.com.cn/article_7879922977_1d5ae1521019019qza.html">散 户 必看:22:00-6:00 隔 夜 交 易的4个隐形风险,避开就能少亏 | 新浪网</a></li>
<li><a href="https://post.smzdm.com/p/a26mkxz7/">看懂 美 股 盘 前信号，普通投 资 者也能摸清 资 金 动 向_基 金 证券_什么值得 买</a></li>

</ul>
</details>

**Tags**: `#US equities`, `#market structure`, `#extended trading hours`, `#overnight trading`, `#liquidity`

---