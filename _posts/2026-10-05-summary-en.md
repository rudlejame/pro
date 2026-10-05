---
layout: default
title: "Horizon Summary: 2026-10-05 (EN)"
date: 2026-10-05
lang: en
---

> From 23 items, 2 important content pieces were selected

---

**Technology News**
1. [Reported top ARC-AGI-3 Kaggle scores jump from 7% to 56% in 30 days](#item-tech-news-1) 🇺🇸 ⭐️ 8.0/10
2. [White House creates &\#x27;Super Intelligence Force&\#x27; AI task force, 120-day risk report due](#item-tech-news-2) 🇺🇸 ⭐️ 7.0/10

---

## Technology News

<a id="item-tech-news-1"></a>
### [Reported top ARC-AGI-3 Kaggle scores jump from 7% to 56% in 30 days](https://www.reddit.com/r/MachineLearning/comments/1wxcd4k/top_arc%CE%B1gi3_scores_on_kaggle_just_went_from_7_to/) 🇺🇸 ⭐️ 8.0/10

A r/MachineLearning post reports that the top score on the ARC-AGI-3 Kaggle competition rose from roughly 7% to 56% within about 30 days, based on a leaderboard screenshot. The poster claims the gain came from small, locally run models in a harness — the only setup Kaggle competitors are permitted to use — and that these now outperform average humans on a benchmark designed to favor human performance. The claim is unverified: it rests on a single community post, the poster acknowledges the screenshot is somewhat out of date, and no confirmation from the live Kaggle leaderboard or the ARC Prize team is included.

reddit · r/MachineLearning · /u/we\_are\_mammals · Oct 4, 10:24 · [Discussion](https://www.reddit.com/r/MachineLearning/comments/1wxcd4k/top_arc%CE%B1gi3_scores_on_kaggle_just_went_from_7_to/)

**「What ARC-AGI-3 is and why the Kaggle setting matters」** ARC-AGI-3 is the latest version of the ARC Prize team&\#x27;s abstract-reasoning benchmark; unlike ARC-AGI-1 and ARC-AGI-2, which presented static input-output grid pairs from which systems inferred transformation rules, it drops agents into turn-based game environments with no stated rules, instructions, or win conditions. The Kaggle leaderboard referenced in the post showcases competition-grade submissions that run under strict, competition-specific compute constraints, which is why entrants there can only use small local models rather than large hosted systems.

**「Impact on ARC-AGI-3 competitors」** For ARC-AGI-3 Kaggle entrants, a top approach is now directly reproducible: Tufa Labs has open-sourced the Duck Harness, its winning Milestone 1 solution, together with a technical writeup and the Kaggle resources needed to reproduce the results. Because the competition reportedly restricts participants to small local models, harness engineering rather than model scale is the main lever, and the reported-but-unverified 7%-to-56% jump suggests shared harness designs can move leaderboard positions within weeks — so entrants should check current standings on the live leaderboard rather than rely on dated screenshots, as the post&\#x27;s own graphic is. Beyond Kaggle, NVIDIA claims its AVO architecture has reached 100% on the benchmark and describes diverging agent designs such as executable world models \(Tycho\) and direct-interaction harnesses \(VISTA\), giving teams several reference architectures to test and adapt.

<details><summary>References</summary>
<ul>
<li><a href="https://arcprize.org/leaderboard">ARC Prize - Leaderboard</a></li>
<li><a href="https://dev.to/codepawl/gpt-5-claude-gemini-all-score-below-1-arc-agi-3-just-broke-every-frontier-model-5dbj">GPT-5, Claude, Gemini All Score Below 1% - ARC AGI 3 Just Broke...</a></li>
<li><a href="https://tufalabs.ai/research/duck-harness/">Duck Harness : Winning Solution for ARC - AGI - 3 Milestone 1</a></li>
<li><a href="https://developer.nvidia.com/blog/nvidia-avo-reaches-100-on-arc-agi-3-demonstrating-a-frontier-level-general-purpose-architecture-for-long-horizon-autonomous-agents/">NVIDIA AVO Reaches 100% on ARC - AGI - 3 , Demonstrating...</a></li>

</ul>
</details>

**Tags**: `#ARC-AGI`, `#benchmark`, `#reasoning`, `#Kaggle`, `#machine-learning`

---

<a id="item-tech-news-2"></a>
### [White House creates &\#x27;Super Intelligence Force&\#x27; AI task force, 120-day risk report due](https://www.wsj.com/tech/ai/new-ai-task-force-to-report-on-risks-of-technology-after-public-and-industry-concerns-b6308bef) 🇺🇸 ⭐️ 7.0/10

According to a Wall Street Journal report, the White House has formed an AI task force named &\#x27;Super Intelligence Force&\#x27; led by Director of National Intelligence Jay Clayton, who confirmed the role to the paper; a senior White House official said it makes Clayton effectively the administration&\#x27;s &\#x27;AI czar.&\#x27; The group is tasked with assessing AI risks and what responsibility the federal government should take for the technology, with a report due within 120 days. President Trump has rejected new regulation despite rising safety concerns, instead backing a voluntary framework that includes external safety audits and stronger internal controls while prioritizing keeping the US ahead of China; he told industry executives this week that the US &\#x27;leads by a wide margin and will keep that lead.&\#x27; Note that this item arrives via a secondhand Telegram relay of the WSJ article, so details beyond Clayton&\#x27;s confirmed role should be treated as unverified until checked against the original report.

telegram · zaihuapd · Oct 4, 02:37

**「Context」** Jay Clayton already heads the US intelligence community as Director of National Intelligence, and the White House describes his new &\#x27;AI czar&\#x27; role as effectively an addition to that position. The task force&\#x27;s 120-day mandate also extends beyond the risk report to reviewing existing laws, weighing potential steps Congress could take, and working with the technology industry to identify AI&\#x27;s risks and opportunities.

**「Impact」** For US AI developers, the immediate effect is a policy posture favoring voluntary safety commitments — external audits and stronger internal controls — over binding rules, with preserving a lead over China as the stated priority. The 120-day report is the concrete milestone to watch, since it will indicate what responsibility federal agencies assume for AI risks and what the voluntary audit framework expects in practice.

<details><summary>References</summary>
<ul>
<li><a href="https://malaysia.news.yahoo.com/jay-clayton-lead-trumps-ai-224548272.html">Jay Clayton to lead Trump&#x27;s AI task force , deliver report in 120 days ...</a></li>
<li><a href="https://www.aa.com.tr/en/americas/white-house-forms-task-force-to-assess-ai-risks-opportunities-wsj/4077340">White House forms task force to assess AI risks , opportunities: WSJ</a></li>

</ul>
</details>

**Tags**: `#AI policy`, `#AI safety`, `#AI regulation`, `#US government`, `#superintelligence`

---