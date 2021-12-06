---
title: A glance at Muslim related news in the press
date: 2021-12-06
summary: New Zealand press continues to be biased toward negative emotional tones when reporting about Muslim
layout: article
byline: gvdr
---

# Intro

Recently, I've been invited by the NZ's Human Right Commission to a hui about disinformation, hate speech and Muslim representation communities in the media.
I have little to contribute, personally. Yet, I had the luck to work for some time with Mazharuddin Syed Ahmed (ARA Institute of Canterbury), and we have been monitoring anti-Islamic rhetoric on social media and mainstream media in Aotearoa New Zealand for two years or more now.

As there were a number of journalists taking part in the hui (all very motivated, kind, and sensible I have to say upfront) I decided to show some preliminary results of that monitoring.

# Data

All the data comes from querying the [GEDLT project](https://www.gdeltproject.org) (that is, the Global Database of Events, Language, and Tone) V2 apis. Thus, all of the data is publicly available. Using their own words, GDELT is "an initiative to construct a catalog of human societal-scale behavior and beliefs across all countries of the world, connecting every person, organization, location, count, theme, news source, and event across the planet into a single massive network that captures what's happening around the world, what its context is and who's involved, and how the world is feeling about it, every single day."

The project started in 2011, and is now well established and is considered reliable (and its limitation have been noted).

The dataset we considered monitors and performs elementary analysis on a large sample of Aotearoa news outlets (mostly press).

# Methodology

We performed a query searching for news containing keywords refering to Islam and the Muslim communities, limiting our search to Aotearoa. Similarly, we picked a bunch of keywords to build a constrat group of news referring to the Christian (Catholic, Anglican, ...) church. We considered a "total" period (starting in 2017), a "before the attack" period (2017 to February 2019), and an "after the attack" period (August November 2019 to today). As we will see, the "after the attack" period has been calibrated so to start *after* the attention brought by the attack has passed.

# Results

The following results are tentative, and they do not in any way substitute a careful reading of the news performed by historians, sociologists, communication and journalism researchers, ..., nor the experience of those impacted by anti-Islamic narratives and actions.

We propose them just to try and offer a data-informed background to more accurate readings and intepretations.

The main question we try to tackle is: _how did the journalist representation of Muslim communities change after the March 2019 white supremacist attack?_

## Indignation burns quickly

The first visible result is that the strong attention about the Muslim communities that followed the attack whined quickly. In the following figure we can see that the attention span didn't last more than three months.

![Volume trend](/images/agam_Total_volume.png)

After those, the proportion of news regarding the Muslim communities in the news outlets returned to pre-attack levels.

There might be some little shift in the base line attention, but if so it is negligeable in size.

It is also visible a "remembrance" effect, with yearly spike following the main one.

## A sad history

The second result we offer regards the _emotional tone_ associated with the articles published.

In the following figure we can notice that the average, daily, emotional tone of the articles was negative (that is, mostly sad, angry, disappointed, ..., emotions) before the attack.

![Tone trend](/images/agam_Total_Tone.png)

Maybe more surprising is the temporal evolution after the attack. We may expect a significant change, maybe a shift toward positive news. That would correspond to noticeable attempt by journalist to use a wider emotional palette while talking about the Muslim communities, an attempt to move away from stereotyped representations.

Yet, despite a visible increase of the emotional variance, and a small shift toward less negative emotions, the overall tone remains negative.

## A sadder history

The negative emotional tone of the news is not found, on the other hand, in the contrast group (the news relating to the Christian communities).

![Tone barcharts](/images/agam_Barchart_Tone_fg.png)

In the previous figure we look at the emotional distribution across the 4 groups (in different shades of blue News about the Muslim communities, in violet news about the Christian communities). It is noticeable how the Christian related news are roughly neutral (the median and the mean are close to zero), and positive and negative news are equally represented (the tails of the distribution are somewhat symmetric around the zero). On the other hand, the news about the Muslim communities are visibly shifted toward the negative emotional tones.

The difference between the total (dark blue), before the attack (blue), and after the attack (light blue) periods are small in comparison to the difference with the control group.

If the emotional palette used by the journalist has changed (and I'm sure many good journalist in Aotearoa are trying to do it), we could not see the effect in the GDELT data.

# Image stereotype

Finally, we took a look at the image tags and topics associated with the collected news articles. Images tags are "visual description" produced algorithmically by Google's Cloud Vision API; image topics are obtained by Google's Cloud Vision API reading the written caption of each image as well as the caption of the same image published elsewhere.

We compared the tags and topics obtained from the news associated to the Muslim and the Christian communities, noticing which words were over or under represented in the two groups.

## Bearded men

Looking at the image tags for the news related to the Muslim communities after the attack, we found an over representation of terms related to the physical aspect of Muslim: these include words like _beard_, _facial air_, _moustache_, _eyelash_.

|                         Label | Muslim | Christian | Difference |
| -----------------------------:|:-----:|:-------:|:----------:|
|                         Beard |    61 |      16 |         45 |
|           White-collar Worker |    45 |       9 |         36 |
|                         Smile |    65 |      30 |         35 |
|                   Facial Hair |    53 |      19 |         34 |
|                   Formal Wear |    54 |      21 |         33 |
|                       Sitting |    54 |      28 |         26 |
|                          Room |    63 |      38 |         25 |
|                     Moustache |    36 |      11 |         25 |
|                       Eyelash |    34 |       9 |         25 |

Conversaly, terms appearing more in the Christian image tags seem not to be connoted in any stereotypical way.

|             Label | Muslim | Christian | Difference |
| -----------------:|:-----:|:-------:|:----------:|
|           T-shirt |    31 |      44 |        -13 |
|     Motor Vehicle |    11 |      23 |        -12 |
|           Leisure |    38 |      50 |        -12 |
|             Chair |    19 |      31 |        -12 |
|           Vehicle |     9 |      20 |        -11 |
|             Grass |    22 |      32 |        -10 |
|           Asphalt |    16 |      24 |         -8 |
|        Recreation |    37 |      44 |         -7 |
| Natural Landscape |     9 |      16 |         -7 |

## Facial hair and terrorism

The situation is, if possible, even clearer looking at the image topics (the descriptors obtained by reading the image caption). If we consider the terms appearing only for the images of the news published after the attack (notice: starting six months *after* the attack, so when the initial response phase was already passed) we find strong physical stereotypation and an explicit reference to terrorism:

|       Label |   Count |
| -----------:| -------:|
| Facial Hair | 75.0000 |
|     Biology | 75.0000 |
|    Headgear | 75.0000 |
|    Minister | 50.0000 |
|       Night | 50.0000 |
|       Court | 50.0000 |
|   Terrorism | 50.0000 |
|     Airport | 50.0000 |
|  Photograph | 50.0000 |
|    Lockdown | 50.0000 |

# Conclusions

We again want to stress the limitation of our superficial survey. These results are tentative. They need an explanation. They may be falsified at a more careful look.

Yet, I believe personally (Giulio's writing) that they are suggestive of a wide spread, systematic bias that has not been tackled (yet) after the attack.

While I am the first to recognise the serious effort that many journalist, academics, community members, activists, are doing to change the stereotyped representation, that change change has not happened (yet).

We (and here I'm speaking as an academic) should take a careful look in the mirror and ask what are doing to counter racism, colonialism, and white supremacy in our community?

#### supplementary material

All the code and data is publicaly available in DaRe's repository [here](link to github).