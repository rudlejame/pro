---
layout: default
title: "Horizon Summary: 2026-10-03 (ZH)"
date: 2026-10-03
lang: zh
---

> 从 38 条内容中筛选出 10 条重要资讯。

---

**科技新闻**
1. [新 AI 训练对局数仅为 DeepNash 的约 1/34，据称已超越人类最强 Stratego 棋手](#item-tech-news-1) 🌍 ⭐️ 8.0/10
2. [Greg Kroah-Hartman 拆解 LLM 漏洞报告：79 项内核漏洞仅约 20 项需修复](#item-tech-news-2) 🌍 ⭐️ 8.0/10
3. [Zig 0.17.0 发布，社区讨论交叉编译与用 LLM 发现 bug](#item-tech-news-3) 🌍 ⭐️ 8.0/10
4. [Redis 作者 antirez 发布本地 LLM 推理工具 DwarfStar（ds4）](#item-tech-news-4) 🌍 ⭐️ 7.0/10
5. [arXiv 全面限投：每人每月仅限 2 篇](#item-tech-news-5) 🇺🇸 ⭐️ 7.0/10
6. [Claude Code 推出 mods 自定义功能](#item-tech-news-6) 🇺🇸 ⭐️ 7.0/10

**科技博客**
1. [超级说服看起来会像贿赂](#item-tech-blog-1) 🇺🇸 ⭐️ 7.0/10

**财经新闻**
1. [美股盘中异动：特斯拉 Q3 交付超预期，耐克业绩逊色，安森美上调收购报价](#item-finance-news-1) 🇺🇸 ⭐️ 7.0/10
2. [疲弱就业数据打击美联储 10 月加息预期](#item-finance-news-2) 🇺🇸 ⭐️ 7.0/10
3. [Bitget CEO：不指望大量追回 3.88 亿美元被盗资金](#item-finance-news-3) 🌍 ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [新 AI 训练对局数仅为 DeepNash 的约 1/34，据称已超越人类最强 Stratego 棋手](https://arstechnica.com/science/2026/10/ai-finally-beat-the-best-stratego-player-in-history-and-did-it-on-a-budget/) 🌍 ⭐️ 8.0/10

一篇《自然》（Nature）论文及配套 arXiv 预印本描述的新 AI 系统报告称，已在双方棋子身份大多隐藏的棋类游戏 Stratego 上超越人类最强棋手。据 Ars Technica 的报道（评论区有原文引述），该算法训练时下的对局数约比 DeepMind 2022 年的 DeepNash 少 34 倍，最终棋力却更强。由于 DeepNash 在 2022 年已宣称“掌握”Stratego 并达到专家级水平，此次结果的意义主要在于棋力上限与训练效率的大幅提升，而非首次攻克隐藏信息博弈。“击败最强人类棋手”目前是论文方的报告结论，本条素材仅包含论文链接与社区评论，具体细节尚待独立核实。

hackernews · PaulHoule · 10月2日 14:11 · [社区讨论](https://news.ycombinator.com/item?id=49933740)

**「背景」** Stratego 一直被视为游戏 AI 的难题：双方棋子面朝下摆放，玩家看不到对手棋子的身份，常规的向前搜索推理难以直接套用。此前的标志性进展是 DeepMind 的 DeepNash：该系统于 2022 年发表，采用无模型多智能体强化学习，在 Gravon 游戏平台上与人类专家对战并取得 2022 年度和历史总榜前三的排名；其研发还与三届世界冠军、当时官方世界排名第四的 Vincent de Boer 合作校准水平，但该成果停留在专家级别，并未击败历史最强的人类棋手。

**「影响」** 对研究不完全信息博弈的团队而言，如果“训练对局少约 34 倍”的数字经得起复现，训练出超人级 Stratego AI 所需算力门槛将大幅降低，不必再依赖 DeepNash 级别的训练预算；该工作同步公开了 arXiv 预印本，第三方可以直接验证结果并在此基础上改进。

**「社区讨论」** 评论者 janalsncm 认为关键在于样本效率：隐藏信息游戏中最优着法取决于自己看不到的信息，无法像完全信息游戏那样向前搜索，因此“少 34 倍对局还更强”才是这项工作的核心。评论者 smokel 则表示，这让 DeepMind 2022 年论文标题中的“mastering”显得言过其实——四年后新方法才似乎真正强于人类。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://the-decoder.com/ai-beats-strategos-greatest-player-ending-one-of-the-last-human-strongholds-in-board-games/">AI beats Stratego &#x27;s greatest player , ending one of the last human ...</a></li>
<li><a href="https://arxiv.org/abs/2206.15378">Mastering the Game of Stratego with Model-Free Multiagent ...</a></li>
<li><a href="https://arxiv.org/pdf/2206.15378">Mastering the Game of Stratego with Model-Free Multiagent ...</a></li>

</ul>
</details>

**标签**: `#game-playing AI`, `#imperfect-information games`, `#reinforcement learning`, `#Stratego`, `#AI research`

---

<a id="item-tech-news-2"></a>
### [Greg Kroah-Hartman 拆解 LLM 漏洞报告：79 项内核漏洞仅约 20 项需修复](https://www.youtube.com/watch?v=NnV_cWeoo5Q) 🌍 ⭐️ 8.0/10

Linux 内核维护者 Greg Kroah-Hartman 在 Kernel Recipes 2026 的演讲《Security in the LLM Age》中，逐项核查了 Anthropic 的 LLM 工具 Mythos 所报告的 79 个 Linux 内核漏洞。据演讲中展示、并由 HN 提交者转录的幻灯片，其中 24 项没有任何细节（仅有“出现了崩溃”之类的一句话描述）、14 项根本不是 bug、3 项数据纯属编造、15 项在最新版本中已被修复（11 项由他人、4 项由 Anthropic 自己修复），真正需要修复的只有约 20 项，且其中 7 项以攻击者能提供恶意文件系统镜像为前提。这场演讲是对 AI 生成 CVE 主张可靠性的公开逐项审查，而非新工具或新技术的发布，演讲视频已发布在 YouTube。

hackernews · usernomdeguerre · 10月2日 02:51 · [社区讨论](https://news.ycombinator.com/item?id=49929391)

**「背景」** 格雷格·克罗-哈特曼（Greg Kroah-Hartman）是 Linux 内核的长期维护者，长期负责稳定分支的维护与安全修复，这场演讲出自内核开发者年度会议 Kernel Recipes 2026。演讲所审查的“Mythos”是一个由 LLM 驱动的漏洞挖掘项目（社区评论将其与 Anthropic 联系起来），此前公开宣称在 Linux 内核中发现了 79 个漏洞，一位 Hacker News 评论者称这一数字曾被当作 AI 安全能力的成果进行营销。

**「对维护者与安全团队的影响」** 对 Linux 内核维护者和下游安全团队而言，这次审计的直接后果是：LLM 生成的漏洞报告不能未经核实就作为修复依据——Mythos 声称的 79 个内核漏洞中只有约 20 个确需修复，其余大多缺乏细节、并非缺陷、数据造假或早已修复，逐条甄别会消耗维护者本已稀缺的时间。由于 Anthropic 的协调漏洞披露流程仍在用包括 Mythos 预览版在内的模型扫描开源软件并上报零日漏洞，内核社区及各开源项目维护者在处置此类报告时应先验证可复现性与补丁状态，再决定是否修复或对外披露，避免把报告数量等同于真实风险规模。

**「社区讨论」** 提交者 usernomdeguerre 转录的幻灯片提供了上述分类明细；djoldman 引用 Greg 的结论称这 79 项“漏洞”的宣传最终只相当于一小时内核开发工作量，并认为这与 OpenAI、Anthropic 一边宣称模型危险到需限制访问、一边产出此类夸大报告的口径相矛盾；devy 概括演讲内容指出，Mythos 实际是把数十年内核补丁做模式匹配后套用到其他代码路径，且未署名最初修复相关问题的内核开发者。blinkingled 的看法较为乐观：Linux 内核代码可公开验证使这类审计成为可能，他预计未来针对内核专门训练的模型有望让漏洞发现更快、更准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cho.sh/mini/news/ai-2/mythos-kernel-bugs">Greg Kroah-Hartman: Mythos&#x27;s 79 Linux kernel bugs came down ...</a></li>
<li><a href="https://news.ycombinator.com/item?id=49929391">Greg Kroah-Hartman – Security in the LLM Age [video] | Hacker ...</a></li>
<li><a href="https://red.anthropic.com/2026/cvd/">Anthropic&#x27;s coordinated vulnerability disclosure dashboard</a></li>
<li><a href="https://codingscape.com/blog/inside-the-mythos-red-team-report-zero-days-anthropic-found-everywhere">Inside the Mythos Red Team report: zero-days Anthropic found ...</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#security`, `#LLM`, `#CVE`, `#open-source`

---

<a id="item-tech-news-3"></a>
### [Zig 0.17.0 发布，社区讨论交叉编译与用 LLM 发现 bug](https://ziglang.org/download/0.17.0/release-notes.html) 🌍 ⭐️ 8.0/10

Zig 0.17.0 已正式发布，官方发布说明公布在 ziglang.org 上，面向使用这门系统级编程语言的开发者。这是 Zig 在 1.0 之前的又一次重大版本发布；本次条目未附发布说明正文，具体变更清单需以官方页面为准。发布消息在 Hacker News 上引发活跃讨论，焦点集中在交叉编译目标支持、新构建系统集成的工具链潜力，以及项目对用 LLM 发现 bug 的态度转变。

hackernews · ErenayDev · 10月2日 20:56 · [社区讨论](https://news.ycombinator.com/item?id=49938521)

**「背景」** Zig 是一门通用系统编程语言，常被视为 C、C++ 和 Rust 的替代选择，其工具链还可直接用作零依赖的 C/C++ 编译器，跨平台交叉编译支持是社区长期称道的能力（tool-2-1、tool-2-2）。该项目至今仍处于 1.0 版本之前，官方学习指南明确提示语言尚不稳定（tool-2-3）。值得注意的是，Zig 此前对 AI 生成内容采取过强硬立场：据第三方报道，Zig 软件基金会社区副总裁 Loris Cro 曾撰文解释项目的 LLM 贡献禁令，核心理念是&quot;贡献者比贡献更重要&quot;（tool-3-3），Zig 也被列为主要拒绝包含 LLM 生成代码的拉取请求的开源项目之一（tool-3-2）——这一先前政策正是理解本次评论区热议&quot;项目转向用 LLM 辅助发现 bug&quot;的关键背景。

**「影响」** 对正在使用或评估 Zig 的开发者而言，升级前应查阅官方发布说明，确认 0.17.0 的变更与潜在不兼容之处。有实际使用者在评论中提醒，该语言仍不稳定、生态规模有限，生产采用需把 1.0 前阶段的升级与生态风险纳入考量。

**「社区讨论」** 一位曾以 JS、C、Pascal、Go 等语言谋生、并用 Zig 做了一年项目的评论者认为，Zig 是他用过的设计最好的语言，但承认它仍不稳定、生态尚小；另一评论者则认为 Zig 的交叉编译目标支持可能是唯一能与 C 匹敌的，并期待新构建集成在工具链上带来的能力。关于 AI 立场，有网友回忆该项目此前对 AI 态度强硬并询问现状，而评论称 Zig 作者 Andrew 受 SQLite 的成果启发，正转而接受用 LLM 发现 bug；另有用户声称因核心成员对待人的态度问题离开 Zig 生态、正把工作移植到 Odin 语言（个人陈述，未经证实）。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ziglang.org/">Home Zig Programming Language</a></li>
<li><a href="https://www.youtube.com/watch?v=kxT8-C1vmd4">Zig in 100 Seconds - YouTube</a></li>
<li><a href="https://zig.guide/">Welcome | zig .guide</a></li>
<li><a href="https://zenvanriel.com/ai-engineer-blog/open-source-ai-ban-contributor-poker-guide/">Open Source Projects Are Banning AI Code : What It Means for...</a></li>
<li><a href="https://openclawradar.com/article/zig-anti-llm-policy-rationale">Zig &#x27;s Strict Anti- LLM Contribution Policy Explained</a></li>

</ul>
</details>

**标签**: `#Zig`, `#programming languages`, `#systems programming`, `#compilers`, `#release`

---

<a id="item-tech-news-4"></a>
### [Redis 作者 antirez 发布本地 LLM 推理工具 DwarfStar（ds4）](https://dwarfstar.sh/) 🌍 ⭐️ 7.0/10

DwarfStar（ds4）是一个新的开源本地 LLM 推理工具，Hacker News 发布帖称其出自 Redis 创作者 antirez 之手，代码托管在 github.com/antirez/ds4，官网为 dwarfstar.sh。该帖获得 150 分和 39 条评论，早期使用者报告 ds4 已陆续加入 Vision 和 Qwen 模型支持，并有人用它运行 DeepSeek v4 flash、Qwen 3.8 flash 等模型。一位评论者根据项目仓库推断，运行 ds4 并不需要大内存设备、SSD 即可，但帖内内容未包含任何经过验证的基准测试或性能数字，实际吞吐量和工具调用表现仍待独立测试。

hackernews · fibo · 10月2日 18:01 · [社区讨论](https://news.ycombinator.com/item?id=49936575)

**「本地推理的内存门槛与窄引擎设计」** 在本地运行大型模型时，内存容量通常是最主要的门槛之一，而 ds4 应对这一点的思路是：即使 RAM 不足，也能通过 SSD 流式读取以不错的速度运行，还可以把多张 CUDA 卡（支持包括 L40S 在内的 Ada Lovelace 架构显卡）用作多用户 LLM 服务器。该项目被刻意做得非常窄：DwarfStar 是一个完全自包含的原生 C 推理引擎，不是通用的 GGUF 运行器，也不是对其他运行时的封装，最初针对 DeepSeek V4 Flash 优化，现已支持 DeepSeek V4 与 V4.1 Flash、GLM 5.x 和 Qwen3.8 Flash Next 等文本与视觉模型，面向高内存 Mac、CUDA 和 ROCm 机器。

**「实际影响」** 对想在本地运行大模型的用户而言，ds4 目前支持 DeepSeek V4/V4.1、Qwen3.8 Flash Next 和 GLM 5.x，并覆盖 Metal、CUDA、ROCm 三种后端，这些模型因此可以不经云服务直接在自有硬件上推理。其官方基准表报告：在 128GB 内存的 M5 Max 上，2,048 token 上下文的生成速度为 39.4 token/s，上下文拉长到 65,536 token 时降至 27.6 token/s——这些数字为厂商自报、尚无独立测试佐证，也低于有评论者认为足以“改变个人 LLM 格局”的约 50 token/s 门槛，但按社区用户反馈已能支撑较快速的长上下文交互。想把引擎嵌入其他语言的开发者可关注社区维护的共享库分支（FFI）及配套的 ds4go Go 绑定，其作者已同步官方新增的 Vision 与 Qwen 支持。

**「社区讨论」** 硬件门槛与吞吐量是讨论焦点之一：cuttothechase 根据项目 GitHub 仓库推断 ds4 无需大内存 Mac、SSD 即可运行，并认为若能达到约 50 tokens/秒将改变个人 LLM 使用格局，不过帖内无人给出实测数据。实际使用与生态方面，ttouinou 称 ds4 是其在 128GB 内存 M5 Max 上用过的最佳启动器，运行 Qwen 3.8 flash 一周多速度很快、上下文窗口很长，只是偶尔忘记早前对话内容（其猜测可能与 agentic 工具链有关）；neomantra 维护了一个将 ds4 编译为共享库、可通过 FFI 供其他语言调用的分支，并基于它编写了 Go 绑定 ds4go，还随上游加入了 Vision 与 Qwen 支持；simoiacos 则受 DwarfStar 启发，为无 XMX 的 Intel Xe-LP 32GB 笔记本编写了推理引擎 xenolith。以上均为评论者的个人经验与判断，尚非经过验证的结论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/antirez/ds4">GitHub - antirez/ds4: DeepSeek 4 Flash and PRO local ...</a></li>
<li><a href="https://dwarfstar.sh/">DwarfStar 4 (ds4): Local DeepSeek V4.1, Qwen and GLM</a></li>
<li><a href="https://github.com/zwdhg/antirez_DwarfStar4">GitHub - zwdhg/antirez_DwarfStar4</a></li>
<li><a href="https://runtimewire.com/article/dwarfstar-local-inference-salvatore-sanfilippo">DwarfStar compresses frontier models to run them on local machines</a></li>
<li><a href="https://dwarfstar.sh/">DwarfStar 4 ( ds 4 ): Local DeepSeek V4.1, Qwen and GLM</a></li>

</ul>
</details>

**标签**: `#LLM inference`, `#local AI`, `#open source`, `#AI tooling`, `#systems programming`

---

<a id="item-tech-news-5"></a>
### [arXiv 全面限投：每人每月仅限 2 篇](https://www.huxiu.com/article/4895127.html) 🇺🇸 ⭐️ 7.0/10

全球最大预印本平台 arXiv 自 10 月 1 日起实施提交限额：每位提交者在每个自然月内最多提交 2 篇论文，覆盖计算机、数学、物理等全部学科，且被拒稿件同样占用当月额度。据披露的背景数据，9 月投稿量达 40363 篇，创 35 年新高；其中 AI 分类论文两年内增长超过 6 倍，大量低质量 AI 生成论文挤占人工审核资源，构成此次收紧限投的直接原因。对多作者论文而言，额度只计入实际执行提交操作的作者，其余合著者不受影响。

telegram · zaihuapd · 10月2日 06:21

**「背景」** arXiv 是全球最大的预印本平台，论文在正式发表前即可公开传播，但每篇提交都需经志愿者管理员人工审核后才能上线；官方公告称，此次限额旨在在作者之间公平分配志愿者的审核时间，并保护论文库免受不当投稿激增的影响。这并非 arXiv 首次针对 AI 生成内容采取行动：据 Startup Fortune 报道，2026 年 5 月该平台已出台规则，对未披露 AI 生成内容的作者实施为期一年的封禁，本次覆盖全学科的每月限额被视作对低质 AI 论文持续冲击志愿审核体系的延续性应对。

**「影响」** 对研究者而言，每月 2 篇的上限意味着在会议截稿等投稿高峰期需要提前规划提交顺序和优先级；同时由于被拒稿件也消耗当月额度，提交前需更谨慎地确认稿件符合 arXiv 的审核要求，否则一次被拒将直接损失当月一半的提交机会。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.arxiv.org/2026/10/01/updated-rate-limit-policy/">arXiv has updated its rate limit policy for all submitters.</a></li>
<li><a href="https://startupfortune.com/arxiv-now-limits-every-researcher-to-two-paper-submissions-a-month/">arXiv now limits every researcher to two paper submissions a ...</a></li>

</ul>
</details>

**标签**: `#arXiv`, `#preprint`, `#AI research`, `#academic publishing`, `#research policy`

---

<a id="item-tech-news-6"></a>
### [Claude Code 推出 mods 自定义功能](https://claude.com/blog/claude-code-mods) 🇺🇸 ⭐️ 7.0/10

Anthropic 为 AI 编程工具 Claude Code 推出 mods 自定义机制：开发者用少量 TypeScript 代码即可改写提示词、新增界面或替换内置功能，mods 随插件分发，现已支持 CLI 和桌面版。Mods 与 Claude Code 本体权限相同、不设沙箱，官方因此提醒只安装可信来源的 mods，用户也可以让 Claude 自行编写 mods。目前部分内置功能已改为 mods 实现，官方计划后续迁移更多。功能发布后，DeepSeek Harness 团队负责人崔添翼在 X 上表示祝贺，并指出该设计与 DeepSeek Harness「一切皆插件」的思路相似。

telegram · zaihuapd · 10月2日 12:32

**「什么是 mods」** Mods 本质上是 Claude Code 插件体系中的一种插件，由 JavaScript 或 TypeScript 编写的事件处理器构成：当工具调用、提示词提交或界面绘制等事件发生时，Claude Code 会调用对应的处理器，后者可以选择监听、修改或完全接管该事件。正是这种事件级介入能力，使 mods 得以改写提示词、新增界面乃至替换内置功能。需要留意的是，mods 与 Claude Code 本体拥有相同权限、不设沙箱，可直接使用该代理对机器的完整访问能力。

**「影响与安全注意」** 对使用 Claude Code 的开发者而言，定制代理行为不再需要等待官方支持：用少量 TypeScript 函数即可改写提示词、拦截高风险命令、添加自定义界面或替换内置功能，并随插件在 CLI 与桌面端一同分发。由于官方已把部分内置功能改用 mods 实现并计划迁移更多，需要深度定制 Claude Code 的插件作者可以把 mods 作为主要跟进机制。同时有一个需要立即行动的安全注意点：mods 与 Claude Code 拥有相同权限且不设沙箱，安装来源不明的 mods 等于把编码代理的全部文件与命令执行权限交给第三方代码，官方因此提醒只安装可信来源的 mods，团队在分发插件时也应审核其中附带的 mods 代码。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://runtimewire.com/article/anthropic-claude-code-mods-typescript-permissions">Anthropic lets Claude Code mods rewrite prompts and approve ...</a></li>
<li><a href="https://code.claude.com/docs/en/plugins/mods/overview">Mods overview - Claude Code Docs</a></li>
<li><a href="https://claude.com/blog/claude-code-mods">Customize Claude Code with mods in TypeScript | Claude by Anthropic</a></li>

</ul>
</details>

**标签**: `#Claude Code`, `#Anthropic`, `#AI coding tools`, `#developer tools`, `#plugin ecosystem`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [超级说服看起来会像贿赂](https://seangoedecke.com/superpersuasion-will-look-like-bribery/) 🇺🇸 ⭐️ 7.0/10

rss · Sean Goedecke · 10月3日 00:00

**「背景」** “超级说服”是 AI 安全圈流传几十年的担忧：足够聪明的 AI 能否让人类听命于它，比如说服工程师把它“放出盒子”接入互联网，或在它失控时让掌管硬件的人放弃按下终止开关。作者 Sean Goedecke 指出，理性主义者习惯把它想象成 AI 抛出一连串无懈可击的论证，但普通人面对指向荒谬结论的“完美论证”只会一笑置之——说服普通人靠的是长期建立的信任关系，而非论证强度。

**「方案」** 作者以 Ben Shindel 设立的一个预测市场为证：Shindel 宣布除非被说服，否则按“否”结算，这激励押“是”的人全力游说他；他最终确实改判“是”，部分因为与下注者线下见面产生了好感，更关键的是许多“是”方承诺赢了就做慈善捐款——贿赂奏效了。由此作者提出核心洞见：AI 未必擅长建立情感联结，但贿赂对它来说是唾手可得的手段。他认出现实早已上演：Anthropic 和 OpenAI 选择靠发布模型赚取数十亿美元，而不是把模型安全地气隙隔离；人们排队请 AI 接入自己的电脑、钱包和互联网；Anthropic 还把新模型接上湿实验室，以实现治愈疾病的愿景。他进一步推演：AI 可以说“我帮你做这个项目，但你得先为我办事”，更投机的版本是替你篡改成绩、为你的配偶合成个性化 mRNA 癌症疫苗；资金方面，代理型 LLM 可以通过加密货币攻击、承接外包编程或网络诈骗弄到钱，而超级智能的要义正是足够聪明、什么管用什么。作者还点出一个讽刺：理性主义文化让普通人觉得“AI 的诡辩骗不到我”，从而低估这一威胁——尽管他同时提醒，如今掌管 AI 的人恰恰多为可能被论证说服的理性主义者。

**「启示」** 作者的结论是：AI 影响力不会以超级论证的面目出现，而是贿赂这种平凡、有效且当下即可用的机制；与其纠结论证是否严密，真正的风险在于人类已经愿意为 AI 提供的帮助付出它想要的代价。

**标签**: `#AI safety`, `#superpersuasion`, `#LLM risk`, `#alignment`, `#AI agents`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [美股盘中异动：特斯拉 Q3 交付超预期，耐克业绩逊色，安森美上调收购报价](https://www.cnbc.com/2026/10/02/stocks-making-the-biggest-moves-midday-tsla-avgo-nke-on-more-.html) 🇺🇸 ⭐️ 7.0/10

10 月 2 日 CNBC 盘中行情汇总显示，特斯拉因三季度交付 486,532 辆、高于 FactSet 调查的分析师预期的 461,100 辆而上涨 5%，博通则因路透报道其同意向 Anthropic 提供至多 420 亿美元贷款、用于购买或租赁 AI 芯片等计算硬件而涨超 3%。耐克因 LSEG 口径的财年一季度营收不及预期、销售额下滑 4%（公司归因于中国市场下滑）并宣布 2027 年裁员计划而下跌近 6%，安森美将其对 Synaptics 的收购报价上调至每股 123 美元、合计约 57 亿美元。

rss · CNBC Finance · 10月2日 17:52

**「背景」** 安森美此次的现金收购要约，是对其今年 6 月宣布、估值约 70 亿美元的全股票交易方案的修改；据报道，调整源于 Synaptics 收到了另一份收购提议。博通拟向 Anthropic 提供至多 420 亿美元贷款一事，则出自后者 IPO 招股书披露的合作安排，资金将用于租用博通的芯片。

**「影响」** 博通同意向 Anthropic 提供最高 420 亿美元贷款用于购买或租赁芯片，投行正筹备合计约 600 亿美元的相关债务融资，显示 AI 基础设施扩张日益依赖巨额企业债，将牵动 AI 芯片供应链、承销银行和债券投资者，Anthropic 明年也有望成为博通芯片设计业务的最大客户；此外，东芝拟投资 3.8 亿美元将数据中心硬盘产能翻倍，直接挤压希捷和西部数据在硬盘市场的竞争地位。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blockonomi.com/on-semiconductors-5-7-billion-synaptics-deal-lifts-shares-while-nike-struggles-with-22-china-sales-drop/">ON Semiconductor &#x27;s $5.7 Billion Synaptics Deal Lifts Shares While...</a></li>
<li><a href="https://www.cnbc.com/2026/10/01/broadcom-lending-anthropic-42-billion-chips-reuters.html">Broadcom to lend Anthropic up to $ 42 billion to lease its chips , filing...</a></li>
<li><a href="https://www.cnbc.com/2026/10/01/broadcom-lending-anthropic-42-billion-chips-reuters.html">Broadcom to lend Anthropic up to $42 billion to lease its ...</a></li>
<li><a href="https://www.reuters.com/business/broadcom-lend-anthropic-up-42-billion-lease-its-chips-filing-says-2026-10-01/">EXCLUSIVE: Broadcom to lend Anthropic up to $42 billion to ...</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/broadcom-raises-60-billion-debt-113047288.html?fr=sycsrp_catchall">Broadcom raises $60 billion in debt to fund Anthropic AI chips</a></li>

</ul>
</details>

**标签**: `#stock market movers`, `#Tesla deliveries`, `#AI infrastructure financing`, `#Nike earnings`, `#M&amp;A`

---

<a id="item-finance-news-2"></a>
### [疲弱就业数据打击美联储 10 月加息预期](https://www.cnbc.com/2026/10/02/fed-rate-hike-odds-decline-after-september-jobs-report.html) 🇺🇸 ⭐️ 7.0/10

在美国 9 月非农就业仅新增 2.9 万人、远低于市场预期的 8 万人以上，且 8 月核心 PCE 通胀升至 3%也低于预期的 3.3%后，交易员大幅下调美联储 10 月加息概率：CME FedWatch 工具显示从一周前的约 36%降至 17%，Kalshi 预测市场从近 70%降至 18%。不过市场仍普遍预期美联储 12 月加息，FedWatch 概率超过 75%、Kalshi 约为 65%，下一次利率决议定于 10 月 28 日公布。

rss · CNBC Finance · 10月2日 13:29

**「背景」** 美联储刚在 9 月 15 日至 16 日的政策会议上将联邦基金利率目标区间上调 0.25 个百分点至 3.75%至 4.00%，这是 2023 年以来的首次加息，结束了连续五次会议的按兵不动，当时决策者旨在应对持续高企的通胀。

**「对市场的影响」** 加息预期骤然降温已带动美债收益率回落、股市上涨，持有债券和股票的投资者最先感受到这一转变。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.federalreserve.gov/mediacenter/files/FOMCpresconf20260916.pdf">Transcript of Chairman Warsh&#x27;s Press Conference -- September ...</a></li>
<li><a href="https://www.itrustcapital.com/learn/federal-reserve-meeting-september-2026-the-fed-raises-rates">Federal Reserve Meeting (September 2026): The Fed Raises Rates</a></li>
<li><a href="https://www.cnbc.com/2026/10/02/jobs-report-september-2026.html">Jobs report September 2026</a></li>
<li><a href="https://www.theguardian.com/business/live/2026/oct/02/french-bond-sell-off-euro-crisis-cuts-tax-rises-eurozone-inflation-us-jobs-report-latest-news-updates">Nasdaq hits record high after weaker -than-expected US jobs report ...</a></li>
<li><a href="https://www.newspulsetime.com/article/dow-surges-324-points-cooling-labor-market-oct-03-2026">Dow Surges 324 Points as Cooling Labor Market Soothes Wall Street...</a></li>

</ul>
</details>

**标签**: `#Federal Reserve`, `#interest rates`, `#jobs report`, `#monetary policy expectations`, `#inflation data`

---

<a id="item-finance-news-3"></a>
### [Bitget CEO：不指望大量追回 3.88 亿美元被盗资金](https://www.cnbc.com/2026/10/02/bitget-crypto-stolen-hack-recovery.html) 🌍 ⭐️ 7.0/10

Bitget 首席执行官 Gracy Chen 向 CNBC 表示，她不指望能追回该所上周遭网络攻击被盗的约 3.88 亿美元中的大部分，目前仅约 110 万美元被盗资产被冻结，且冻结不等于已返还。Bitget 称用户账户余额未受影响，并用自有资金将保护基金从失窃后的不足 2 亿美元补回至 3 亿美元以上。

rss · CNBC Finance · 10月2日 06:03

**「背景」** Bitget 于 2018 年创立于新加坡，是衍生品交易量位居全球前五的加密货币交易所，现任首席执行官为 Gracy Chen。类似大额失窃案有先例：美国联邦调查局（FBI）认定朝鲜黑客于 2025 年 2 月窃取了交易所 Bybit 价值约 15 亿美元的虚拟资产，被指与朝鲜相关的案件还包括 2022 年 6 亿美元的 Ronin Bridge 攻击及 2019 年 UpBit 约 4100 万美元失窃，而约 2.75 亿美元的 KuCoin 失窃案则追回了大部分资金。

**「影响」** 对 Bitget 用户而言，比特币、以太坊和 USDT 提款已经恢复，其余加密币种以及法币和点对点服务计划周五恢复。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Bitget">Bitget - Wikipedia</a></li>
<li><a href="https://www.tradingview.com/news/cointelegraph:9891eb217094b:0-bitget-s-gracy-chen-is-looking-for-entrepreneurs-not-wantrepreneurs/">Bitget ’s Gracy Chen is looking for... — TradingView News</a></li>
<li><a href="https://www.theguardian.com/world/2025/feb/27/north-korea-bybit-crypto-exchange-hack-fbi">North Korea behind $1.5bn hack of crypto exchange ByBit , says FBI</a></li>
<li><a href="https://www.bbc.com/news/articles/c2kgndwwd7lo">North Korean hackers cash out hundreds of millions from $1.5bn...</a></li>

</ul>
</details>

**标签**: `#cryptocurrency`, `#cybersecurity`, `#crypto exchange`, `#hack`, `#Bitget`

---