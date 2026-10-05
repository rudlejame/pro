---
layout: default
title: "Horizon Summary: 2026-10-05 (ZH)"
date: 2026-10-05
lang: zh
---

> 从 23 条内容中筛选出 2 条重要资讯。

---

**科技新闻**
1. [Kaggle 上 ARC-AGI-3 最高分据称一个月内从 7% 升至 56%](#item-tech-news-1) 🇺🇸 ⭐️ 8.0/10
2. [白宫成立&quot;超级智能力量&quot;工作组，120 天内提交 AI 风险报告](#item-tech-news-2) 🇺🇸 ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Kaggle 上 ARC-AGI-3 最高分据称一个月内从 7% 升至 56%](https://www.reddit.com/r/MachineLearning/comments/1wxcd4k/top_arc%CE%B1gi3_scores_on_kaggle_just_went_from_7_to/) 🇺🇸 ⭐️ 8.0/10

Reddit r/MachineLearning 上一篇由 /u/we\_are\_mammals 于 2026 年 10 月 4 日发布的帖子称，Kaggle 上 ARC-AGI-3 基准的最高分在约 30 天内从约 7% 升至约 56%。发帖人表示，这一成绩由小参数本地模型（Kaggle 参赛者只能使用此类模型）配合 harness 取得，并已开始在专为凸显人类优势而设计的抽象推理基准上超过普通人类水平。目前该说法仅附带一张排行榜截图，发帖人自己也注明截图已有些过时，尚无来自 Kaggle 排行榜或 ARC Prize 团队的直接确认，应视为待核实的社区报告。

reddit · r/MachineLearning · /u/we\_are\_mammals · 10月4日 10:24 · [社区讨论](https://www.reddit.com/r/MachineLearning/comments/1wxcd4k/top_arc%CE%B1gi3_scores_on_kaggle_just_went_from_7_to/)

**「ARC-AGI-3 的形式变化与 Kaggle 赛道约束」** ARC-AGI-3 是 ARC-AGI 抽象推理基准系列的最新版本：此前的 ARC-AGI-1 与 ARC-AGI-2 采用静态的输入-输出网格对，要求系统推断并应用变换规则，而 ARC-AGI-3 则将智能体放入回合制游戏环境中，不提供规则说明、指令或胜利条件。据一篇第三方报道，GPT-5、Claude、Gemini 等前沿模型在该基准上的得分曾不足 1%。另据 ARC Prize 官方排行榜的说明，Kaggle 赛道的参赛方案须在严格的比赛专用算力限制下运行，由为此类比赛专门设计的高效方法构成，这正是帖子中&\#x27;Kaggle 选手只能使用小型本地模型&\#x27;这一说法的依据。

**「影响」** 若 7% 到 56% 的跃升得到 Kaggle 排行榜或 ARC Prize 团队确认，对参赛开发者的直接影响是：在帖子所述“只能使用小型本地模型”的参赛规则下，成绩差异将更多取决于 agent harness 的工程设计而非模型规模——ARC-AGI-3 是要求智能体在陌生环境中探索、即时建立目标并持续学习的交互式推理基准，此类任务对 harness 的依赖度高。参赛者已有可直接利用的资源：Tufa Labs 在其研究页面开源了拿下 ARC-AGI-3 Kaggle 挑战 Milestone 1 的获胜方案 Duck Harness，附设计总结、智能体行为说明及复现结果所需的 Kaggle 资源链接，可据此搭建可复现基线或在其上改进。在该数据被官方核实前，结论应以排行榜实时读数为准，帖子作者自己也指出所附截图已过时。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arcprize.org/leaderboard">ARC Prize - Leaderboard</a></li>
<li><a href="https://dev.to/codepawl/gpt-5-claude-gemini-all-score-below-1-arc-agi-3-just-broke-every-frontier-model-5dbj">GPT-5, Claude, Gemini All Score Below 1% - ARC AGI 3 Just Broke...</a></li>
<li><a href="https://arcprize.org/arc-agi/3">ARC - AGI - 3</a></li>
<li><a href="https://tufalabs.ai/research/duck-harness/">Duck Harness : Winning Solution for ARC - AGI - 3 Milestone 1</a></li>

</ul>
</details>

**标签**: `#ARC-AGI`, `#benchmark`, `#reasoning`, `#Kaggle`, `#machine-learning`

---

<a id="item-tech-news-2"></a>
### [白宫成立&quot;超级智能力量&quot;工作组，120 天内提交 AI 风险报告](https://www.wsj.com/tech/ai/new-ai-task-force-to-report-on-risks-of-technology-after-public-and-industry-concerns-b6308bef) 🇺🇸 ⭐️ 7.0/10

据《华尔街日报》报道，白宫新设一个名为&quot;超级智能力量&quot;（Super Intelligence Force）的特别工作组，由国家情报总监 Jay Clayton 领导，负责评估人工智能的风险以及联邦政府应承担的应对责任，并须在 120 天内提交风险报告。Clayton 已向该报确认这一角色，一名白宫高级官员称他实际上成为特朗普政府的&quot;AI 沙皇&quot;。尽管外界对 AI 安全风险的担忧升温，特朗普仍拒绝出台新监管，优先考虑保持对中国的领先，并支持一套包含外部安全审计和更强内部管控的自愿框架。Clayton 表示，总统要求组建该小组，确保美国&quot;继续在超级智能领域保持领先，并把美国人民的利益放在首位&quot;，特朗普本周在与行业高管会面时也称美国&quot;领先幅度很大，会继续保持领先&quot;。

telegram · zaihuapd · 10月4日 02:37

**「背景」** 一名白宫高级官员表示，这一任命实际上使 Clayton 成为特朗普政府的&quot;AI 沙皇&quot;，即由单一官员统筹联邦层面的人工智能政策。据其他媒体转述《华尔街日报》的报道，该工作组的职责不止于撰写风险报告：它还将审视现行法律、评估国会可能采取的立法步骤，并与科技行业合作识别 AI 的风险与机遇。

**「影响」** 对美国 AI 行业而言，监管方向已经明确：自愿性框架——包括外部安全审计和更强的内部管控——优先于新法规，最直接的政策节点是 120 天后的风险报告。在美运营的 AI 开发商可对照这套自愿要求评估自身安全实践，以匹配后续可能形成的行业预期。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://malaysia.news.yahoo.com/jay-clayton-lead-trumps-ai-224548272.html">Jay Clayton to lead Trump&#x27;s AI task force , deliver report in 120 days ...</a></li>
<li><a href="https://www.aa.com.tr/en/americas/white-house-forms-task-force-to-assess-ai-risks-opportunities-wsj/4077340">White House forms task force to assess AI risks , opportunities: WSJ</a></li>

</ul>
</details>

**标签**: `#AI policy`, `#AI safety`, `#AI regulation`, `#US government`, `#superintelligence`

---