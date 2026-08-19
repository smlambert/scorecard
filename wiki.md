### Scorecards for Past Releases

Scorecards are calculated in an automated way using Github and Adoptium API calls (as opposed to the manual tracking which used the manual launch of the pipeline as the starting time rather than when the tag was available in our GitHub mirror and manual tracking also discounted weekends).

Primary platforms target is to release within  **2 days**, Secondary platforms target is to release within **7 days**.

---

<details>
<summary> Retrospective 'Golf Score' - Compare & Track Progress Across All Releases</summary>

---

What does 'par' mean?  One definition is the amount taken as an average or norm, an accepted standard.  The targets we set for ourselves, 2 days and 7 days then are our average or norm that we are trying to beat.  _Total Days over Par_ is the sum of days past the target it took to complete the entire release, the smaller the number, the better.  _Total Days under Par_ is the sum of the days we were early to release platforms and versions ahead of the target for the release, the bigger, the better.  Combining the two, we can then create a succinct metric, 'Days Over minus Days Under' which, and just like a golf score where **the lower the number, the better we did**.

| Release | Total Products released | Total Days Over Par | Total Days Under Par | Golf Score (Days Over minus Days Under) | Avg Golf Score Per Product |
| --- | ---- | --- | --- | --- | --- |
| WIP Jul 2026 | 62 | 154 | 29 | 125 | 2.016 |
| Apr 2026 | 63 | 290 | 56 | 234 | 3.714 |
| Jan 2026 | 52 | 251 | 77 | 174 | 3.346 |
| Oct 2025 | 57 | 311 | 49 | 262 | 4.596 |
| Jul 2025 | 46 | 123 | 42 | 81 | 1.761 |
| Apr 2025 | 44 | 20 | 53 | -33 | -0.750 |
| Jan 2025 | 46 | 5 | 80 | -75 | -1.630 |
| Oct 2024 | 45 | 28 | 59 | -31 | -0.689 |
| Jul 2024 | 58 | 16 | 85 | -69 | -1.190 |
| Apr 2024 | 11 | 0 | 19 | -19 | -1.727 |
| Sep 2026 | 8 | 0 | 35 | -35 | -4.375 |

_Days Over minus Days Under_ measure, is a generalized measure of how a release went, consider it our 'golf score', the smaller the better.  Large positive numbers indicate that the release did not go smoothly.  Negative numbers indicate a smoother release period.  If the overall number becomes sufficiently small (an impressively negative number) consistently for several release periods, it may indicate that it is time to adjust the targets to be harder to achieve (instead of 2 days, move to 1 day, instead of 7 move to 5, and so forth).

</details>

---
<details><summary>WIP Jul 2026</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u502-ga| Thu Jul 16 13:42:58 UTC 2026 | Tue Jul 21 20:30:53 UTC 2026 |                -5 |
|        jdk8u502-b07_adopt| Tue Jul 21 21:14:15 UTC 2026 | Tue Jul 21 21:14:15 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-31-2026 |               2/9 |         No |        jdk8u502-b07_adopt|
|        x64| alpine-linux |  07-31-2026 |               7/9 |         No |        jdk8u502-b07_adopt|
|    ppc64le|        linux |  07-31-2026 |               7/9 |         No |        jdk8u502-b07_adopt|
|      ppc64|          aix |  07-31-2026 |               7/9 |         No |        jdk8u502-b07_adopt|
|    aarch64|        linux |  07-31-2026 |               2/9 |         No |        jdk8u502-b07_adopt|
|        x64|      windows |  07-31-2026 |               2/9 |         No |        jdk8u502-b07_adopt|
|        x64|          mac |  07-31-2026 |               2/9 |         No |        jdk8u502-b07_adopt|

On-Time 0(0%)  Late: 7(100%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.32-ga| Wed Jul  8 16:16:00 UTC 2026 | Tue Jul 21 20:25:59 UTC 2026 |               -13 |
|       jdk-11.0.32+9_adopt| Tue Jul 21 21:07:16 UTC 2026 | Tue Jul 21 21:07:16 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-24-2026 |               2/2 |        Yes |       jdk-11.0.32+9_adopt|
|    aarch64|        linux |  07-24-2026 |               2/2 |        Yes |       jdk-11.0.32+9_adopt|
|        x64| alpine-linux |  07-27-2026 |               7/5 |        Yes |       jdk-11.0.32+9_adopt|
|    ppc64le|        linux |  07-27-2026 |               7/5 |        Yes |       jdk-11.0.32+9_adopt|
|      ppc64|          aix |  07-28-2026 |               7/6 |        Yes |       jdk-11.0.32+9_adopt|
|      s390x|        linux |  07-28-2026 |               7/6 |        Yes |       jdk-11.0.32+9_adopt|
|        arm|        linux |  07-29-2026 |               7/7 |        Yes |       jdk-11.0.32+9_adopt|
|        x64|      windows |  07-29-2026 |               2/7 |         No |       jdk-11.0.32+9_adopt|
|        x64|          mac |  07-30-2026 |               2/8 |         No |       jdk-11.0.32+9_adopt|
|    aarch64|          mac |  07-30-2026 |               2/8 |         No |       jdk-11.0.32+9_adopt|

On-Time 7(70%)  Late: 3(30%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.20-ga| Mon Jul 13 06:55:50 UTC 2026 | Tue Jul 21 21:09:12 UTC 2026 |                -8 |
|       jdk-17.0.20+8_adopt| Tue Jul 21 21:42:15 UTC 2026 | Tue Jul 21 21:42:15 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-24-2026 |               2/2 |        Yes |       jdk-17.0.20+8_adopt|
|    ppc64le|        linux |  07-24-2026 |               7/2 |        Yes |       jdk-17.0.20+8_adopt|
|        x64|          mac |  07-24-2026 |               2/2 |        Yes |       jdk-17.0.20+8_adopt|
|        x64| alpine-linux |  07-24-2026 |               7/2 |        Yes |       jdk-17.0.20+8_adopt|
|      s390x|        linux |  07-24-2026 |               7/2 |        Yes |       jdk-17.0.20+8_adopt|
|    riscv64|        linux |  07-27-2026 |               7/5 |        Yes |       jdk-17.0.20+8_adopt|
|        arm|        linux |  07-28-2026 |               7/6 |        Yes |       jdk-17.0.20+8_adopt|
|    aarch64|        linux |  07-28-2026 |               2/6 |         No |       jdk-17.0.20+8_adopt|
|        x64|      windows |  07-29-2026 |               2/7 |         No |       jdk-17.0.20+8_adopt|
|    aarch64|          mac |  07-30-2026 |               2/8 |         No |       jdk-17.0.20+8_adopt|
|      ppc64|          aix |  07-31-2026 |               7/9 |         No |       jdk-17.0.20+8_adopt|

On-Time 7(63%)  Late: 4(36%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-21.0.12-ga| Mon Jul 13 06:55:55 UTC 2026 | Tue Jul 21 21:03:40 UTC 2026 |                -8 |
|       jdk-21.0.12+8_adopt| Tue Jul 21 21:09:15 UTC 2026 | Tue Jul 21 21:09:16 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-24-2026 |               2/2 |        Yes |       jdk-21.0.12+8_adopt|
|    aarch64|        linux |  07-24-2026 |               2/2 |        Yes |       jdk-21.0.12+8_adopt|
|    ppc64le|        linux |  07-28-2026 |               7/6 |        Yes |       jdk-21.0.12+8_adopt|
|      ppc64|          aix |  07-28-2026 |               7/6 |        Yes |       jdk-21.0.12+8_adopt|
|        x64| alpine-linux |  07-28-2026 |               7/6 |        Yes |       jdk-21.0.12+8_adopt|
|    riscv64|        linux |  07-28-2026 |               7/6 |        Yes |       jdk-21.0.12+8_adopt|
|        x64|          mac |  07-28-2026 |               2/6 |         No |       jdk-21.0.12+8_adopt|
|      s390x|        linux |  07-28-2026 |               7/6 |        Yes |       jdk-21.0.12+8_adopt|
|        x64|      windows |  07-29-2026 |               2/7 |         No |       jdk-21.0.12+8_adopt|
|    aarch64|          mac |  07-30-2026 |               2/8 |         No |       jdk-21.0.12+8_adopt|
|    aarch64|      windows |  07-31-2026 |               7/9 |         No |       jdk-21.0.12+8_adopt|
|    aarch64| alpine-linux |  07-31-2026 |               7/9 |         No |       jdk-21.0.12+8_adopt|

On-Time 7(58%)  Late: 5(41%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-25.0.4-ga| Mon Jul 13 06:56:01 UTC 2026 | Tue Jul 21 20:45:19 UTC 2026 |                -8 |
|        jdk-25.0.4+7_adopt| Tue Jul 21 21:45:16 UTC 2026 | Tue Jul 21 21:45:17 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|      windows |  07-27-2026 |               2/5 |         No |        jdk-25.0.4+7_adopt|
|        x64|          mac |  07-28-2026 |               2/6 |         No |        jdk-25.0.4+7_adopt|
|    aarch64|          mac |  07-28-2026 |               2/6 |         No |        jdk-25.0.4+7_adopt|
|      ppc64|          aix |  07-29-2026 |               7/7 |        Yes |        jdk-25.0.4+7_adopt|
|    aarch64|        linux |  07-29-2026 |               2/7 |         No |        jdk-25.0.4+7_adopt|
|    ppc64le|        linux |  07-29-2026 |               7/7 |        Yes |        jdk-25.0.4+7_adopt|
|        x64| alpine-linux |  07-29-2026 |               7/7 |        Yes |        jdk-25.0.4+7_adopt|
|    riscv64|        linux |  07-29-2026 |               7/7 |        Yes |        jdk-25.0.4+7_adopt|
|        x64|        linux |  07-29-2026 |               2/7 |         No |        jdk-25.0.4+7_adopt|
|      s390x|        linux |  07-30-2026 |               7/8 |         No |        jdk-25.0.4+7_adopt|
|    aarch64| alpine-linux |  07-31-2026 |               7/9 |         No |        jdk-25.0.4+7_adopt|

On-Time 4(36%)  Late: 7(63%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-26.0.2-ga| Wed Jun 17 07:37:29 UTC 2026 | Tue Jul 21 15:41:58 UTC 2026 |               -34 |
|       jdk-26.0.2+10_adopt| Tue Jul 21 16:30:14 UTC 2026 | Tue Jul 21 16:30:15 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|          mac |  07-28-2026 |               2/6 |         No |       jdk-26.0.2+10_adopt|
|    aarch64|          mac |  07-28-2026 |               2/6 |         No |       jdk-26.0.2+10_adopt|
|        x64|        linux |  07-29-2026 |               2/7 |         No |       jdk-26.0.2+10_adopt|
|    aarch64|        linux |  07-29-2026 |               2/7 |         No |       jdk-26.0.2+10_adopt|
|      ppc64|          aix |  07-31-2026 |               7/9 |         No |       jdk-26.0.2+10_adopt|
|    riscv64|        linux |  07-31-2026 |               7/9 |         No |       jdk-26.0.2+10_adopt|
|        x64| alpine-linux |  07-31-2026 |               7/9 |         No |       jdk-26.0.2+10_adopt|
|    aarch64| alpine-linux |  07-31-2026 |               7/9 |         No |       jdk-26.0.2+10_adopt|
|    ppc64le|        linux |  07-31-2026 |               7/9 |         No |       jdk-26.0.2+10_adopt|
|        x64|      windows |  08-03-2026 |              2/12 |         No |       jdk-26.0.2+10_adopt|
|      s390x|        linux |  08-03-2026 |              7/12 |         No |       jdk-26.0.2+10_adopt|

On-Time 0(0%)  Late: 11(100%)



</details>

<details><summary>Apr 2026</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u492-ga| Fri Apr 17 17:04:32 UTC 2026 | Wed Apr 22 12:39:07 UTC 2026 |                -4 |
|        jdk8u492-b09_adopt| Wed Apr 22 13:14:14 UTC 2026 | Wed Apr 22 13:14:14 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  05-04-2026 |              2/11 |         No |        jdk8u492-b09_adopt|
|    aarch64|        linux |  05-04-2026 |              2/11 |         No |        jdk8u492-b09_adopt|
|        x64|          mac |  05-04-2026 |              2/12 |         No |        jdk8u492-b09_adopt|
|        arm|        linux |  05-05-2026 |              7/12 |         No | jdk8u492-b09-aarch32-20260428_adopt|
|        x64| alpine-linux |  05-05-2026 |              7/13 |         No |        jdk8u492-b09_adopt|
|      ppc64|          aix |  05-06-2026 |              7/13 |         No |        jdk8u492-b09_adopt|
|    ppc64le|        linux |  05-06-2026 |              7/13 |         No |        jdk8u492-b09_adopt|
|        x64|      windows |  05-12-2026 |              2/19 |         No |        jdk8u492-b09_adopt|

On-Time 0(0%)  Late: 8(100%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.31-ga| Thu Apr 16 21:03:39 UTC 2026 | Wed Apr 22 13:38:13 UTC 2026 |                -5 |
|      jdk-11.0.31+11_adopt| Wed Apr 22 13:07:14 UTC 2026 | Wed Apr 22 13:07:14 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  04-28-2026 |               2/5 |         No |      jdk-11.0.31+11_adopt|
|      ppc64|          aix |  04-28-2026 |               7/5 |        Yes |      jdk-11.0.31+11_adopt|
|    aarch64|          mac |  04-28-2026 |               2/5 |         No |      jdk-11.0.31+11_adopt|
|        x64|          mac |  04-28-2026 |               2/5 |         No |      jdk-11.0.31+11_adopt|
|    ppc64le|        linux |  04-28-2026 |               7/6 |        Yes |      jdk-11.0.31+11_adopt|
|        x64|      windows |  04-28-2026 |               2/6 |         No |      jdk-11.0.31+11_adopt|
|      s390x|        linux |  04-28-2026 |               7/6 |        Yes |      jdk-11.0.31+11_adopt|
|    aarch64|        linux |  04-29-2026 |               2/6 |         No |      jdk-11.0.31+11_adopt|
|        arm|        linux |  04-29-2026 |               7/6 |        Yes |      jdk-11.0.31+11_adopt|
|        x64| alpine-linux |  04-29-2026 |               7/6 |        Yes |      jdk-11.0.31+11_adopt|

On-Time 5(50%)  Late: 5(50%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.19-ga| Fri Apr 17 19:11:39 UTC 2026 | Fri Apr 17 19:19:08 UTC 2026 |                 0 |
|      jdk-17.0.19+10_adopt| Tue Apr 21 20:42:14 UTC 2026 | Tue Apr 21 20:42:15 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  04-22-2026 |               2/0 |        Yes |      jdk-17.0.19+10_adopt|
|    ppc64le|        linux |  04-23-2026 |               7/1 |        Yes |      jdk-17.0.19+10_adopt|
|        x64| alpine-linux |  04-24-2026 |               7/2 |        Yes |      jdk-17.0.19+10_adopt|
|        x64|          mac |  04-28-2026 |               2/6 |         No |      jdk-17.0.19+10_adopt|
|    aarch64|          mac |  04-28-2026 |               2/6 |         No |      jdk-17.0.19+10_adopt|
|      ppc64|          aix |  04-29-2026 |               7/7 |        Yes |      jdk-17.0.19+10_adopt|
|    riscv64|        linux |  04-29-2026 |               7/7 |        Yes |      jdk-17.0.19+10_adopt|
|    aarch64|        linux |  04-30-2026 |               2/8 |         No |      jdk-17.0.19+10_adopt|
|        x64|      windows |  05-04-2026 |              2/12 |         No |      jdk-17.0.19+10_adopt|
|        arm|        linux |  05-04-2026 |              7/12 |         No |      jdk-17.0.19+10_adopt|
|      s390x|        linux |  05-04-2026 |              7/12 |         No |      jdk-17.0.19+10_adopt|

On-Time 5(45%)  Late: 6(54%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-21.0.11-ga| Fri Apr 17 19:09:35 UTC 2026 | Fri Apr 17 19:16:52 UTC 2026 |                 0 |
|      jdk-21.0.11+10_adopt| Tue Apr 21 21:09:15 UTC 2026 | Tue Apr 21 21:09:15 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64| alpine-linux |  04-23-2026 |               7/1 |        Yes |      jdk-21.0.11+10_adopt|
|        x64|        linux |  04-23-2026 |               2/1 |        Yes |      jdk-21.0.11+10_adopt|
|        x64| alpine-linux |  04-25-2026 |               7/3 |        Yes |      jdk-21.0.11+10_adopt|
|    aarch64|          mac |  04-27-2026 |               2/5 |         No |      jdk-21.0.11+10_adopt|
|        x64|          mac |  04-27-2026 |               2/5 |         No |      jdk-21.0.11+10_adopt|
|      ppc64|          aix |  04-28-2026 |               7/6 |        Yes |      jdk-21.0.11+10_adopt|
|        x64|      windows |  04-28-2026 |               2/6 |         No |      jdk-21.0.11+10_adopt|
|    aarch64|        linux |  04-30-2026 |               2/8 |         No |      jdk-21.0.11+10_adopt|
|    ppc64le|        linux |  04-30-2026 |               7/8 |         No |      jdk-21.0.11+10_adopt|
|      s390x|        linux |  05-04-2026 |              7/12 |         No |      jdk-21.0.11+10_adopt|
|    riscv64|        linux |  05-04-2026 |              7/12 |         No |      jdk-21.0.11+10_adopt|
|    aarch64|      windows |  05-14-2026 |              7/22 |         No |      jdk-21.0.11+10_adopt|

On-Time 4(33%)  Late: 8(66%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-25.0.3-ga| Fri Apr 17 19:08:13 UTC 2026 | Fri Apr 17 19:15:48 UTC 2026 |                 0 |
|        jdk-25.0.3+9_adopt| Tue Apr 21 20:45:16 UTC 2026 | Tue Apr 21 20:45:16 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  04-22-2026 |               2/0 |        Yes |        jdk-25.0.3+9_adopt|
|      s390x|        linux |  04-22-2026 |               7/0 |        Yes |        jdk-25.0.3+9_adopt|
|    aarch64| alpine-linux |  04-23-2026 |               7/1 |        Yes |        jdk-25.0.3+9_adopt|
|    ppc64le|        linux |  04-24-2026 |               7/2 |        Yes |        jdk-25.0.3+9_adopt|
|        x64| alpine-linux |  04-24-2026 |               7/2 |        Yes |        jdk-25.0.3+9_adopt|
|    aarch64|          mac |  04-24-2026 |               2/2 |        Yes |        jdk-25.0.3+9_adopt|
|        x64|          mac |  04-24-2026 |               2/2 |        Yes |        jdk-25.0.3+9_adopt|
|    riscv64|        linux |  04-28-2026 |               7/7 |        Yes |        jdk-25.0.3+9_adopt|
|        x64|      windows |  04-29-2026 |               2/7 |         No |        jdk-25.0.3+9_adopt|
|      ppc64|          aix |  04-29-2026 |               7/7 |        Yes |        jdk-25.0.3+9_adopt|
|    aarch64|        linux |  04-30-2026 |               2/8 |         No |        jdk-25.0.3+9_adopt|

On-Time 9(81%)  Late: 2(18%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-26.0.1-ga| Tue Mar 10 15:42:26 UTC 2026 | Tue Apr 21 15:41:39 UTC 2026 |               -41 |
|        jdk-26.0.1+8_adopt| Tue Apr 21 16:30:15 UTC 2026 | Tue Apr 21 16:30:16 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  05-06-2026 |              2/14 |         No |        jdk-26.0.1+8_adopt|
|    aarch64|        linux |  05-06-2026 |              2/14 |         No |        jdk-26.0.1+8_adopt|
|    aarch64| alpine-linux |  05-06-2026 |              7/14 |         No |        jdk-26.0.1+8_adopt|
|      ppc64|          aix |  05-06-2026 |              7/15 |         No |        jdk-26.0.1+8_adopt|
|    ppc64le|        linux |  05-07-2026 |              7/15 |         No |        jdk-26.0.1+8_adopt|
|    riscv64|        linux |  05-07-2026 |              7/15 |         No |        jdk-26.0.1+8_adopt|
|      s390x|        linux |  05-07-2026 |              7/15 |         No |        jdk-26.0.1+8_adopt|
|        x64| alpine-linux |  05-07-2026 |              7/15 |         No |        jdk-26.0.1+8_adopt|
|    aarch64|          mac |  05-07-2026 |              2/15 |         No |        jdk-26.0.1+8_adopt|
|        x64|          mac |  05-07-2026 |              2/15 |         No |        jdk-26.0.1+8_adopt|
|        x64|      windows |  05-15-2026 |              2/23 |         No |        jdk-26.0.1+8_adopt|

On-Time 0(0%)  Late: 11(100%)



</details>

<details><summary>Jan 2026</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u482-ga| Wed Jan 14 04:15:56 UTC 2026 | Wed Jan 21 04:37:36 UTC 2026 |                -7 |
|        jdk8u482-b08_adopt| Wed Jan 21 05:14:12 UTC 2026 | Wed Jan 21 05:14:12 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    ppc64le|        linux |  01-29-2026 |               7/8 |         No |        jdk8u482-b08_adopt|
|        x64|        linux |  02-02-2026 |              2/12 |         No |        jdk8u482-b08_adopt|
|    aarch64|        linux |  02-02-2026 |              2/12 |         No |        jdk8u482-b08_adopt|
|        x64| alpine-linux |  02-02-2026 |              7/12 |         No |        jdk8u482-b08_adopt|
|      ppc64|          aix |  02-03-2026 |              7/13 |         No |        jdk8u482-b08_adopt|
|        arm|        linux |  02-04-2026 |              7/14 |         No | jdk8u482-b08-aarch32-20260122_adopt|
|        x64|          mac |  02-04-2026 |              2/14 |         No |        jdk8u482-b08_adopt|
|        x64|      windows |  02-04-2026 |              2/14 |         No |        jdk8u482-b08_adopt|

On-Time 0(0%)  Late: 8(100%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.30-ga| Wed Jan 14 04:13:54 UTC 2026 | Wed Jan 21 04:41:06 UTC 2026 |                -7 |
|       jdk-11.0.30+7_adopt| Wed Jan 21 05:07:12 UTC 2026 | Wed Jan 21 05:07:12 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  01-28-2026 |               2/7 |         No |       jdk-11.0.30+7_adopt|
|    ppc64le|        linux |  01-28-2026 |               7/7 |        Yes |       jdk-11.0.30+7_adopt|
|        x64| alpine-linux |  01-28-2026 |               7/7 |        Yes |       jdk-11.0.30+7_adopt|
|        arm|        linux |  02-03-2026 |              7/13 |         No |       jdk-11.0.30+7_adopt|
|      s390x|        linux |  02-03-2026 |              7/13 |         No |       jdk-11.0.30+7_adopt|
|        x64|      windows |  02-03-2026 |              2/13 |         No |       jdk-11.0.30+7_adopt|
|    aarch64|        linux |  02-03-2026 |              2/13 |         No |       jdk-11.0.30+7_adopt|
|      ppc64|          aix |  02-03-2026 |              7/13 |         No |       jdk-11.0.30+7_adopt|
|        x64|          mac |  02-03-2026 |              2/13 |         No |       jdk-11.0.30+7_adopt|
|    aarch64|          mac |  02-04-2026 |              2/14 |         No |       jdk-11.0.30+7_adopt|

On-Time 2(20%)  Late: 8(80%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.18-ga| Thu Jan 15 15:23:06 UTC 2026 | Thu Jan 15 15:47:17 UTC 2026 |                 0 |
|       jdk-17.0.18+8_adopt| Tue Jan 20 21:42:13 UTC 2026 | Tue Jan 20 21:42:13 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  01-21-2026 |               2/0 |        Yes |       jdk-17.0.18+8_adopt|
|        x64| alpine-linux |  01-21-2026 |               7/0 |        Yes |       jdk-17.0.18+8_adopt|
|    riscv64|        linux |  01-22-2026 |               7/1 |        Yes |       jdk-17.0.18+8_adopt|
|    ppc64le|        linux |  01-23-2026 |               7/2 |        Yes |       jdk-17.0.18+8_adopt|
|      s390x|        linux |  01-23-2026 |               7/2 |        Yes |       jdk-17.0.18+8_adopt|
|        arm|        linux |  01-23-2026 |               7/2 |        Yes |       jdk-17.0.18+8_adopt|
|    aarch64|        linux |  01-29-2026 |               2/8 |         No |       jdk-17.0.18+8_adopt|
|      ppc64|          aix |  02-02-2026 |              7/12 |         No |       jdk-17.0.18+8_adopt|
|        x64|          mac |  02-03-2026 |              2/13 |         No |       jdk-17.0.18+8_adopt|
|    aarch64|          mac |  02-04-2026 |              2/14 |         No |       jdk-17.0.18+8_adopt|
|        x64|      windows |  02-04-2026 |              2/14 |         No |       jdk-17.0.18+8_adopt|

On-Time 6(54%)  Late: 5(45%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-21.0.10-ga| Thu Jan 15 15:34:19 UTC 2026 | Thu Jan 15 15:48:27 UTC 2026 |                 0 |
|       jdk-21.0.10+7_adopt| Tue Jan 20 22:01:33 UTC 2026 | Tue Jan 20 22:01:34 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  01-21-2026 |               2/0 |        Yes |       jdk-21.0.10+7_adopt|
|        x64| alpine-linux |  01-21-2026 |               7/0 |        Yes |       jdk-21.0.10+7_adopt|
|    aarch64| alpine-linux |  01-22-2026 |               7/1 |        Yes |       jdk-21.0.10+7_adopt|
|    ppc64le|        linux |  01-23-2026 |               7/2 |        Yes |       jdk-21.0.10+7_adopt|
|    riscv64|        linux |  01-27-2026 |               7/6 |        Yes |       jdk-21.0.10+7_adopt|
|    aarch64|        linux |  01-28-2026 |               2/7 |         No |       jdk-21.0.10+7_adopt|
|      ppc64|          aix |  01-29-2026 |               7/8 |         No |       jdk-21.0.10+7_adopt|
|      s390x|        linux |  01-29-2026 |               7/8 |         No |       jdk-21.0.10+7_adopt|
|        x64|          mac |  01-30-2026 |               2/9 |         No |       jdk-21.0.10+7_adopt|
|    aarch64|          mac |  02-03-2026 |              2/13 |         No |       jdk-21.0.10+7_adopt|
|        x64|      windows |  02-03-2026 |              2/13 |         No |       jdk-21.0.10+7_adopt|
|    aarch64|      windows |  02-05-2026 |              7/15 |         No |       jdk-21.0.10+7_adopt|

On-Time 5(41%)  Late: 7(58%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-25.0.2-ga| Thu Dec 18 08:04:02 UTC 2025 | Tue Jan 20 20:15:18 UTC 2026 |               -33 |
|       jdk-25.0.2+10_adopt| Wed Jan 21 09:20:26 UTC 2026 | Wed Jan 21 09:22:22 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64| alpine-linux |  01-22-2026 |               7/0 |        Yes |       jdk-25.0.2+10_adopt|
|        x64|        linux |  01-22-2026 |               2/1 |        Yes |       jdk-25.0.2+10_adopt|
|    riscv64|        linux |  01-23-2026 |               7/1 |        Yes |       jdk-25.0.2+10_adopt|
|    ppc64le|        linux |  01-23-2026 |               7/2 |        Yes |       jdk-25.0.2+10_adopt|
|      s390x|        linux |  01-23-2026 |               7/2 |        Yes |       jdk-25.0.2+10_adopt|
|        x64| alpine-linux |  01-26-2026 |               7/5 |        Yes |       jdk-25.0.2+10_adopt|
|    aarch64|        linux |  01-29-2026 |               2/8 |         No |       jdk-25.0.2+10_adopt|
|      ppc64|          aix |  01-29-2026 |               7/8 |         No |       jdk-25.0.2+10_adopt|
|    aarch64|          mac |  01-30-2026 |               2/8 |         No |       jdk-25.0.2+10_adopt|
|        x64|      windows |  01-30-2026 |               2/9 |         No |       jdk-25.0.2+10_adopt|
|        x64|          mac |  02-02-2026 |              2/12 |         No |       jdk-25.0.2+10_adopt|

On-Time 6(54%)  Late: 5(45%)



</details>

<details><summary>Oct 2025</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u472-ga| Mon Oct 13 21:25:43 UTC 2025 | Wed Oct 22 01:18:09 UTC 2025 |                -8 |
|        jdk8u472-b08_adopt| Wed Oct 22 02:14:58 UTC 2025 | Wed Oct 22 02:14:58 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64| alpine-linux |  10-24-2025 |               7/2 |        Yes |        jdk8u472-b08_adopt|
|        x64|        linux |  10-28-2025 |               2/6 |         No |        jdk8u472-b08_adopt|
|    aarch64|        linux |  10-29-2025 |               2/7 |         No |        jdk8u472-b08_adopt|
|        x64|      windows |  10-30-2025 |               2/7 |         No |        jdk8u472-b08_adopt|
|    ppc64le|        linux |  11-04-2025 |              7/13 |         No |        jdk8u472-b08_adopt|
|        x64|          mac |  11-06-2025 |              2/15 |         No |        jdk8u472-b08_adopt|
|      ppc64|          aix |  11-06-2025 |              7/15 |         No |        jdk8u472-b08_adopt|
|        arm|        linux |  11-07-2025 |              7/16 |         No | jdk8u472-b08-aarch32-20251022_adopt|
|        x32|      windows |  11-08-2025 |              7/17 |         No |        jdk8u472-b08_adopt|
|        x64|      solaris |  11-25-2025 |              7/34 |         No |        jdk8u472-b08_adopt|
|    sparcv9|      solaris |  11-25-2025 |              7/34 |         No |        jdk8u472-b08_adopt|

On-Time 1(9%)  Late: 10(90%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.29-ga| Mon Oct 13 21:11:58 UTC 2025 | Wed Oct 22 01:14:29 UTC 2025 |                -8 |
|       jdk-11.0.29+7_adopt| Wed Oct 22 02:08:07 UTC 2025 | Wed Oct 22 02:08:07 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64| alpine-linux |  10-27-2025 |               7/5 |        Yes |       jdk-11.0.29+7_adopt|
|        x64|        linux |  10-28-2025 |               2/6 |         No |       jdk-11.0.29+7_adopt|
|    aarch64|        linux |  10-30-2025 |               2/8 |         No |       jdk-11.0.29+7_adopt|
|    aarch64|          mac |  10-30-2025 |               2/8 |         No |       jdk-11.0.29+7_adopt|
|        x64|      windows |  11-01-2025 |              2/10 |         No |       jdk-11.0.29+7_adopt|
|      ppc64|          aix |  11-03-2025 |              7/12 |         No |       jdk-11.0.29+7_adopt|
|      s390x|        linux |  11-04-2025 |              7/13 |         No |       jdk-11.0.29+7_adopt|
|    ppc64le|        linux |  11-05-2025 |              7/14 |         No |       jdk-11.0.29+7_adopt|
|        x64|          mac |  11-06-2025 |              2/15 |         No |       jdk-11.0.29+7_adopt|
|        x32|      windows |  11-07-2025 |              7/16 |         No |       jdk-11.0.29+7_adopt|
|        arm|        linux |  11-07-2025 |              7/16 |         No |       jdk-11.0.29+7_adopt|

On-Time 1(9%)  Late: 10(90%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.17-ga| Mon Oct 13 07:48:04 UTC 2025 | Mon Oct 13 07:53:09 UTC 2025 |                 0 |
|      jdk-17.0.17+10_adopt| Tue Oct 21 21:43:15 UTC 2025 | Tue Oct 21 21:43:15 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  10-23-2025 |               2/1 |        Yes |      jdk-17.0.17+10_adopt|
|    aarch64|          mac |  10-23-2025 |               2/1 |        Yes |      jdk-17.0.17+10_adopt|
|        x64| alpine-linux |  10-24-2025 |               7/2 |        Yes |      jdk-17.0.17+10_adopt|
|    aarch64|        linux |  10-26-2025 |               2/4 |         No |      jdk-17.0.17+10_adopt|
|        arm|        linux |  10-26-2025 |               7/4 |        Yes |      jdk-17.0.17+10_adopt|
|        x64|      windows |  10-30-2025 |               2/8 |         No |      jdk-17.0.17+10_adopt|
|      ppc64|          aix |  11-03-2025 |              7/12 |         No |      jdk-17.0.17+10_adopt|
|    riscv64|        linux |  11-03-2025 |              7/12 |         No |      jdk-17.0.17+10_adopt|
|    ppc64le|        linux |  11-05-2025 |              7/14 |         No |      jdk-17.0.17+10_adopt|
|        x64|          mac |  11-06-2025 |              2/15 |         No |      jdk-17.0.17+10_adopt|
|      s390x|        linux |  11-06-2025 |              7/15 |         No |      jdk-17.0.17+10_adopt|
|        x32|      windows |  11-20-2025 |              7/29 |         No |      jdk-17.0.17+10_adopt|

On-Time 4(33%)  Late: 8(66%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-21.0.9-ga| Mon Oct 13 07:49:24 UTC 2025 | Mon Oct 13 07:51:47 UTC 2025 |                 0 |
|       jdk-21.0.9+10_adopt| Tue Oct 21 22:10:21 UTC 2025 | Tue Oct 21 22:10:21 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|          mac |  10-23-2025 |               2/1 |        Yes |       jdk-21.0.9+10_adopt|
|        x64|        linux |  10-23-2025 |               2/1 |        Yes |       jdk-21.0.9+10_adopt|
|      s390x|        linux |  10-24-2025 |               7/2 |        Yes |       jdk-21.0.9+10_adopt|
|        x64| alpine-linux |  10-24-2025 |               7/2 |        Yes |       jdk-21.0.9+10_adopt|
|    aarch64| alpine-linux |  10-24-2025 |               7/2 |        Yes |       jdk-21.0.9+10_adopt|
|    aarch64|        linux |  10-30-2025 |               2/8 |         No |       jdk-21.0.9+10_adopt|
|        x64|      windows |  10-30-2025 |               2/9 |         No |       jdk-21.0.9+10_adopt|
|    riscv64|        linux |  10-31-2025 |               7/9 |         No |       jdk-21.0.9+10_adopt|
|      ppc64|          aix |  10-31-2025 |               7/9 |         No |       jdk-21.0.9+10_adopt|
|    ppc64le|        linux |  11-03-2025 |              7/12 |         No |       jdk-21.0.9+10_adopt|
|    aarch64|      windows |  11-03-2025 |              7/12 |         No |       jdk-21.0.9+10_adopt|
|        x64|          mac |  11-03-2025 |              2/12 |         No |       jdk-21.0.9+10_adopt|

On-Time 5(41%)  Late: 7(58%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-25.0.1-ga| Thu Sep 25 16:16:56 UTC 2025 | Wed Oct 22 09:50:02 UTC 2025 |               -26 |
|        jdk-25.0.1+8_adopt| Wed Oct 22 10:03:38 UTC 2025 | Wed Oct 22 10:03:38 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64| alpine-linux |  10-24-2025 |               7/1 |        Yes |        jdk-25.0.1+8_adopt|
|      s390x|        linux |  10-24-2025 |               7/2 |        Yes |        jdk-25.0.1+8_adopt|
|        x64|        linux |  10-24-2025 |               2/2 |        Yes |        jdk-25.0.1+8_adopt|
|    aarch64| alpine-linux |  10-26-2025 |               7/4 |        Yes |        jdk-25.0.1+8_adopt|
|    aarch64|        linux |  10-28-2025 |               2/6 |         No |        jdk-25.0.1+8_adopt|
|    riscv64|        linux |  10-28-2025 |               7/6 |        Yes |        jdk-25.0.1+8_adopt|
|        x64|          mac |  10-29-2025 |               2/6 |         No |        jdk-25.0.1+8_adopt|
|        x64|      windows |  10-29-2025 |               2/6 |         No |        jdk-25.0.1+8_adopt|
|    aarch64|          mac |  10-29-2025 |               2/6 |         No |        jdk-25.0.1+8_adopt|
|    ppc64le|        linux |  10-30-2025 |               7/8 |         No |        jdk-25.0.1+8_adopt|
|      ppc64|          aix |  10-31-2025 |               7/9 |         No |        jdk-25.0.1+8_adopt|

On-Time 5(45%)  Late: 6(54%)



</details>

<details><summary>Jul 2025</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u462-ga| Tue Jul  8 00:47:50 UTC 2025 | Tue Jul 15 23:46:06 UTC 2025 |                -7 |
|        jdk8u462-b08_adopt| Wed Jul 16 00:14:33 UTC 2025 | Wed Jul 16 00:14:33 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64| alpine-linux |  07-21-2025 |               7/5 |        Yes |        jdk8u462-b08_adopt|
|    aarch64|        linux |  07-22-2025 |               2/6 |         No |        jdk8u462-b08_adopt|
|        x64|        linux |  07-23-2025 |               2/7 |         No |        jdk8u462-b08_adopt|
|    ppc64le|        linux |  07-25-2025 |               7/9 |         No |        jdk8u462-b08_adopt|
|        x32|      windows |  07-25-2025 |               7/9 |         No |        jdk8u462-b08_adopt|
|        x64|      windows |  07-26-2025 |              2/10 |         No |        jdk8u462-b08_adopt|
|        x64|          mac |  07-28-2025 |              2/12 |         No |        jdk8u462-b08_adopt|
|      ppc64|          aix |  07-29-2025 |              7/13 |         No |        jdk8u462-b08_adopt|
|        arm|        linux |  07-29-2025 |              7/13 |         No | jdk8u462-b08-aarch32-20250718_adopt|
|    sparcv9|      solaris |  08-07-2025 |              7/22 |         No |        jdk8u462-b08_adopt|
|        x64|      solaris |  08-08-2025 |              7/23 |         No |        jdk8u462-b08_adopt|

On-Time 1(9%)  Late: 10(90%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.28-ga| Tue Jul  8 00:39:10 UTC 2025 | Wed Jul 16 00:29:21 UTC 2025 |                -7 |
|       jdk-11.0.28+6_adopt| Wed Jul 16 01:07:43 UTC 2025 | Wed Jul 16 01:07:43 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-18-2025 |               2/2 |        Yes |       jdk-11.0.28+6_adopt|
|        x64|          mac |  07-18-2025 |               2/2 |        Yes |       jdk-11.0.28+6_adopt|
|        x64| alpine-linux |  07-21-2025 |               7/5 |        Yes |       jdk-11.0.28+6_adopt|
|    aarch64|        linux |  07-21-2025 |               2/5 |         No |       jdk-11.0.28+6_adopt|
|    aarch64|          mac |  07-22-2025 |               2/6 |         No |       jdk-11.0.28+6_adopt|
|        arm|        linux |  07-23-2025 |               7/7 |        Yes |       jdk-11.0.28+6_adopt|
|        x64|      windows |  07-23-2025 |               2/7 |         No |       jdk-11.0.28+6_adopt|
|    ppc64le|        linux |  07-23-2025 |               7/7 |        Yes |       jdk-11.0.28+6_adopt|
|      s390x|        linux |  07-26-2025 |               7/9 |         No |       jdk-11.0.28+6_adopt|
|      ppc64|          aix |  07-26-2025 |               7/9 |         No |       jdk-11.0.28+6_adopt|
|        x32|      windows |  07-28-2025 |              7/12 |         No |       jdk-11.0.28+6_adopt|

On-Time 5(45%)  Late: 6(54%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.16-ga| Wed Jul  9 05:52:02 UTC 2025 | Wed Jul  9 06:00:27 UTC 2025 |                 0 |
|       jdk-17.0.16+8_adopt| Tue Jul 15 20:42:39 UTC 2025 | Tue Jul 15 20:42:40 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|          mac |  07-17-2025 |               2/1 |        Yes |       jdk-17.0.16+8_adopt|
|        x64| alpine-linux |  07-18-2025 |               7/2 |        Yes |       jdk-17.0.16+8_adopt|
|    ppc64le|        linux |  07-18-2025 |               7/2 |        Yes |       jdk-17.0.16+8_adopt|
|        x64|        linux |  07-18-2025 |               2/2 |        Yes |       jdk-17.0.16+8_adopt|
|    aarch64|          mac |  07-21-2025 |               2/5 |         No |       jdk-17.0.16+8_adopt|
|    riscv64|        linux |  07-22-2025 |               7/6 |        Yes |       jdk-17.0.16+8_adopt|
|        x64|      windows |  07-22-2025 |               2/6 |         No |       jdk-17.0.16+8_adopt|
|        x32|      windows |  07-23-2025 |               7/7 |        Yes |       jdk-17.0.16+8_adopt|
|    aarch64|        linux |  07-24-2025 |               2/8 |         No |       jdk-17.0.16+8_adopt|
|      s390x|        linux |  07-25-2025 |              7/10 |         No |       jdk-17.0.16+8_adopt|
|      ppc64|          aix |  07-25-2025 |              7/10 |         No |       jdk-17.0.16+8_adopt|
|        arm|        linux |  07-28-2025 |              7/12 |         No |       jdk-17.0.16+8_adopt|

On-Time 6(50%)  Late: 6(50%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-21.0.8-ga| Wed Jul  9 05:53:39 UTC 2025 | Wed Jul  9 05:58:20 UTC 2025 |                 0 |
|        jdk-21.0.8+9_adopt| Tue Jul 15 21:09:42 UTC 2025 | Tue Jul 15 21:09:42 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64| alpine-linux |  07-17-2025 |               7/1 |        Yes |        jdk-21.0.8+9_adopt|
|        x64|          mac |  07-17-2025 |               2/1 |        Yes |        jdk-21.0.8+9_adopt|
|    aarch64|        linux |  07-17-2025 |               2/1 |        Yes |        jdk-21.0.8+9_adopt|
|    ppc64le|        linux |  07-18-2025 |               7/2 |        Yes |        jdk-21.0.8+9_adopt|
|        x64| alpine-linux |  07-18-2025 |               7/2 |        Yes |        jdk-21.0.8+9_adopt|
|    aarch64|          mac |  07-18-2025 |               2/2 |        Yes |        jdk-21.0.8+9_adopt|
|        x64|        linux |  07-18-2025 |               2/2 |        Yes |        jdk-21.0.8+9_adopt|
|    riscv64|        linux |  07-18-2025 |               7/2 |        Yes |        jdk-21.0.8+9_adopt|
|      s390x|        linux |  07-22-2025 |               7/6 |        Yes |        jdk-21.0.8+9_adopt|
|        x64|      windows |  07-22-2025 |               2/6 |         No |        jdk-21.0.8+9_adopt|
|      ppc64|          aix |  07-22-2025 |               7/6 |        Yes |        jdk-21.0.8+9_adopt|
|    aarch64|      windows |  07-22-2025 |               7/6 |        Yes |        jdk-21.0.8+9_adopt|

On-Time 11(91%)  Late: 1(8%)



</details>

<details><summary>Apr 2025</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u452-ga| Fri Apr 11 16:25:36 UTC 2025 | Tue Apr 15 23:29:54 UTC 2025 |                -4 |
|        jdk8u452-b09_adopt| Wed Apr 16 00:14:32 UTC 2025 | Wed Apr 16 00:14:33 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|        linux |  04-17-2025 |               2/1 |        Yes |        jdk8u452-b09_adopt|
|        x64|        linux |  04-17-2025 |               2/1 |        Yes |        jdk8u452-b09_adopt|
|        x64|      windows |  04-20-2025 |               2/4 |         No |        jdk8u452-b09_adopt|
|        x64|          mac |  04-20-2025 |               2/4 |         No |        jdk8u452-b09_adopt|
|      ppc64|          aix |  04-22-2025 |               7/6 |        Yes |        jdk8u452-b09_adopt|
|    ppc64le|        linux |  04-22-2025 |               7/6 |        Yes |        jdk8u452-b09_adopt|
|        x32|      windows |  04-23-2025 |               7/7 |        Yes |        jdk8u452-b09_adopt|
|        x64| alpine-linux |  04-24-2025 |               7/8 |         No |        jdk8u452-b09_adopt|
|        arm|        linux |  04-27-2025 |              7/11 |         No | jdk8u452-b09-aarch32-20250424_adopt|

On-Time 5(55%)  Late: 4(44%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.27-ga| Wed Apr  9 00:46:46 UTC 2025 | Wed Apr 16 00:20:15 UTC 2025 |                -6 |
|       jdk-11.0.27+6_adopt| Wed Apr 16 01:07:33 UTC 2025 | Wed Apr 16 01:07:33 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  04-17-2025 |               2/1 |        Yes |       jdk-11.0.27+6_adopt|
|    aarch64|        linux |  04-17-2025 |               2/1 |        Yes |       jdk-11.0.27+6_adopt|
|        x64|      windows |  04-17-2025 |               2/1 |        Yes |       jdk-11.0.27+6_adopt|
|        x64|          mac |  04-20-2025 |               2/4 |         No |       jdk-11.0.27+6_adopt|
|        x32|      windows |  04-22-2025 |               7/6 |        Yes |       jdk-11.0.27+6_adopt|
|    ppc64le|        linux |  04-22-2025 |               7/6 |        Yes |       jdk-11.0.27+6_adopt|
|    aarch64|          mac |  04-22-2025 |               2/6 |         No |       jdk-11.0.27+6_adopt|
|      ppc64|          aix |  04-23-2025 |               7/7 |        Yes |       jdk-11.0.27+6_adopt|
|        x64| alpine-linux |  04-23-2025 |               7/7 |        Yes |       jdk-11.0.27+6_adopt|
|        arm|        linux |  04-23-2025 |               7/7 |        Yes |       jdk-11.0.27+6_adopt|
|      s390x|        linux |  04-23-2025 |               7/7 |        Yes |       jdk-11.0.27+6_adopt|

On-Time 9(81%)  Late: 2(18%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.15-ga| Wed Apr  9 19:45:33 UTC 2025 | Wed Apr  9 20:38:23 UTC 2025 |                 0 |
|       jdk-17.0.15+6_adopt| Tue Apr 15 20:42:32 UTC 2025 | Tue Apr 15 20:42:32 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|          mac |  04-16-2025 |               2/0 |        Yes |       jdk-17.0.15+6_adopt|
|    aarch64|        linux |  04-16-2025 |               2/0 |        Yes |       jdk-17.0.15+6_adopt|
|        x64|        linux |  04-16-2025 |               2/0 |        Yes |       jdk-17.0.15+6_adopt|
|        x64|      windows |  04-16-2025 |               2/0 |        Yes |       jdk-17.0.15+6_adopt|
|        arm|        linux |  04-16-2025 |               7/0 |        Yes |       jdk-17.0.15+6_adopt|
|        x64|          mac |  04-17-2025 |               2/1 |        Yes |       jdk-17.0.15+6_adopt|
|    riscv64|        linux |  04-20-2025 |               7/4 |        Yes |       jdk-17.0.15+6_adopt|
|        x64| alpine-linux |  04-20-2025 |               7/4 |        Yes |       jdk-17.0.15+6_adopt|
|    ppc64le|        linux |  04-22-2025 |               7/6 |        Yes |       jdk-17.0.15+6_adopt|
|      s390x|        linux |  04-23-2025 |               7/7 |        Yes |       jdk-17.0.15+6_adopt|
|        x32|      windows |  04-23-2025 |               7/7 |        Yes |       jdk-17.0.15+6_adopt|
|      ppc64|          aix |  04-24-2025 |               7/8 |         No |       jdk-17.0.15+6_adopt|

On-Time 11(91%)  Late: 1(8%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-21.0.7-ga| Wed Apr  9 19:45:47 UTC 2025 | Wed Apr  9 20:05:30 UTC 2025 |                 0 |
|        jdk-21.0.7+6_adopt| Tue Apr 15 21:10:05 UTC 2025 | Tue Apr 15 21:10:06 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|          mac |  04-16-2025 |               2/0 |        Yes |        jdk-21.0.7+6_adopt|
|        x64|          mac |  04-16-2025 |               2/0 |        Yes |        jdk-21.0.7+6_adopt|
|        x64|        linux |  04-16-2025 |               2/0 |        Yes |        jdk-21.0.7+6_adopt|
|    aarch64|        linux |  04-17-2025 |               2/1 |        Yes |        jdk-21.0.7+6_adopt|
|      s390x|        linux |  04-18-2025 |               7/2 |        Yes |        jdk-21.0.7+6_adopt|
|        x64| alpine-linux |  04-18-2025 |               7/2 |        Yes |        jdk-21.0.7+6_adopt|
|        x64|      windows |  04-20-2025 |               2/4 |         No |        jdk-21.0.7+6_adopt|
|    aarch64| alpine-linux |  04-20-2025 |               7/4 |        Yes |        jdk-21.0.7+6_adopt|
|    ppc64le|        linux |  04-22-2025 |               7/6 |        Yes |        jdk-21.0.7+6_adopt|
|      ppc64|          aix |  04-23-2025 |               7/7 |        Yes |        jdk-21.0.7+6_adopt|
|    riscv64|        linux |  04-23-2025 |               7/7 |        Yes |        jdk-21.0.7+6_adopt|
|    aarch64|      windows |  04-25-2025 |               7/9 |         No |        jdk-21.0.7+6_adopt|

On-Time 10(83%)  Late: 2(16%)



</details>

<details><summary>Jan 2025</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u442-ga| Sat Jan 11 20:43:15 UTC 2025 | Wed Jan 22 01:12:22 UTC 2025 |               -10 |
|        jdk8u442-b06_adopt| Wed Jan 22 01:16:36 UTC 2025 | Wed Jan 22 01:16:36 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|        linux |  01-23-2025 |               2/1 |        Yes |        jdk8u442-b06_adopt|
|        x64|      windows |  01-23-2025 |               2/1 |        Yes |        jdk8u442-b06_adopt|
|        x64|        linux |  01-23-2025 |               2/1 |        Yes |        jdk8u442-b06_adopt|
|        x64|          mac |  01-23-2025 |               2/1 |        Yes |        jdk8u442-b06_adopt|
|    ppc64le|        linux |  01-24-2025 |               7/2 |        Yes |        jdk8u442-b06_adopt|
|        x64| alpine-linux |  01-27-2025 |               7/5 |        Yes |        jdk8u442-b06_adopt|
|    sparcv9|      solaris |  01-28-2025 |               7/6 |        Yes |        jdk8u442-b06_adopt|
|        x64|      solaris |  01-29-2025 |               7/7 |        Yes |        jdk8u442-b06_adopt|
|        x32|      windows |  01-30-2025 |               7/8 |         No |        jdk8u442-b06_adopt|
|        arm|        linux |  01-30-2025 |               7/8 |         No | jdk8u442-b06-aarch32-20250125_adopt|
|      ppc64|          aix |  01-30-2025 |               7/8 |         No |        jdk8u442-b06_adopt|

On-Time 8(72%)  Late: 3(27%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.26-ga| Sat Jan 11 18:24:07 UTC 2025 | Wed Jan 22 01:13:21 UTC 2025 |               -10 |
|       jdk-11.0.26+4_adopt| Wed Jan 22 01:10:48 UTC 2025 | Wed Jan 22 01:10:49 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    ppc64le|        linux |  01-23-2025 |               7/1 |        Yes |       jdk-11.0.26+4_adopt|
|        x64|          mac |  01-23-2025 |               2/1 |        Yes |       jdk-11.0.26+4_adopt|
|    aarch64|          mac |  01-23-2025 |               2/1 |        Yes |       jdk-11.0.26+4_adopt|
|    aarch64|        linux |  01-23-2025 |               2/1 |        Yes |       jdk-11.0.26+4_adopt|
|        x64|      windows |  01-23-2025 |               2/1 |        Yes |       jdk-11.0.26+4_adopt|
|        x64|        linux |  01-24-2025 |               2/2 |        Yes |       jdk-11.0.26+4_adopt|
|        arm|        linux |  01-24-2025 |               7/2 |        Yes |       jdk-11.0.26+4_adopt|
|        x64| alpine-linux |  01-28-2025 |               7/6 |        Yes |       jdk-11.0.26+4_adopt|
|      s390x|        linux |  01-29-2025 |               7/7 |        Yes |       jdk-11.0.26+4_adopt|
|      ppc64|          aix |  01-30-2025 |               7/8 |         No |       jdk-11.0.26+4_adopt|
|        x32|      windows |  01-30-2025 |               7/8 |         No |       jdk-11.0.26+4_adopt|

On-Time 9(81%)  Late: 2(18%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.14-ga| Sat Jan  4 20:25:18 UTC 2025 | Sat Jan  4 20:44:56 UTC 2025 |                 0 |
|       jdk-17.0.14+7_adopt| Tue Jan 21 22:43:31 UTC 2025 | Tue Jan 21 22:43:31 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|      windows |  01-23-2025 |               2/1 |        Yes |       jdk-17.0.14+7_adopt|
|    aarch64|          mac |  01-23-2025 |               2/1 |        Yes |       jdk-17.0.14+7_adopt|
|    ppc64le|        linux |  01-23-2025 |               7/1 |        Yes |       jdk-17.0.14+7_adopt|
|        x64|          mac |  01-23-2025 |               2/1 |        Yes |       jdk-17.0.14+7_adopt|
|    aarch64|        linux |  01-24-2025 |               2/2 |        Yes |       jdk-17.0.14+7_adopt|
|        arm|        linux |  01-24-2025 |               7/2 |        Yes |       jdk-17.0.14+7_adopt|
|        x64|        linux |  01-24-2025 |               2/2 |        Yes |       jdk-17.0.14+7_adopt|
|      s390x|        linux |  01-24-2025 |               7/2 |        Yes |       jdk-17.0.14+7_adopt|
|        x64| alpine-linux |  01-27-2025 |               7/5 |        Yes |       jdk-17.0.14+7_adopt|
|        x32|      windows |  01-27-2025 |               7/5 |        Yes |       jdk-17.0.14+7_adopt|
|    riscv64|        linux |  01-27-2025 |               7/5 |        Yes |       jdk-17.0.14+7_adopt|
|      ppc64|          aix |  01-29-2025 |               7/7 |        Yes |       jdk-17.0.14+7_adopt|

On-Time 12(100%)  Late: 0(0%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-21.0.6-ga| Sat Jan  4 20:22:12 UTC 2025 | Sat Jan  4 20:43:26 UTC 2025 |                 0 |
|        jdk-21.0.6+7_adopt| Tue Jan 21 22:10:51 UTC 2025 | Tue Jan 21 22:10:51 UTC 2025 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|          mac |  01-22-2025 |               2/0 |        Yes |        jdk-21.0.6+7_adopt|
|        x64|      windows |  01-23-2025 |               2/1 |        Yes |        jdk-21.0.6+7_adopt|
|        x64|        linux |  01-23-2025 |               2/1 |        Yes |        jdk-21.0.6+7_adopt|
|        x64|          mac |  01-23-2025 |               2/1 |        Yes |        jdk-21.0.6+7_adopt|
|    aarch64|        linux |  01-24-2025 |               2/2 |        Yes |        jdk-21.0.6+7_adopt|
|    ppc64le|        linux |  01-24-2025 |               7/2 |        Yes |        jdk-21.0.6+7_adopt|
|      ppc64|          aix |  01-24-2025 |               7/2 |        Yes |        jdk-21.0.6+7_adopt|
|      s390x|        linux |  01-24-2025 |               7/2 |        Yes |        jdk-21.0.6+7_adopt|
|        x64| alpine-linux |  01-27-2025 |               7/5 |        Yes |        jdk-21.0.6+7_adopt|
|    aarch64| alpine-linux |  01-27-2025 |               7/5 |        Yes |        jdk-21.0.6+7_adopt|
|    riscv64|        linux |  01-27-2025 |               7/5 |        Yes |        jdk-21.0.6+7_adopt|
|    aarch64|      windows |  01-28-2025 |               7/6 |        Yes |        jdk-21.0.6+7_adopt|

On-Time 12(100%)  Late: 0(0%)



</details>

<details><summary>Oct 2024</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u432-ga| Sat Oct  5 01:14:08 UTC 2024 | Wed Oct 16 15:13:28 UTC 2024 |               -11 |
|        jdk8u432-b06_adopt| Wed Oct 16 15:16:02 UTC 2024 | Wed Oct 16 15:16:02 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  10-18-2024 |               2/1 |        Yes |        jdk8u432-b06_adopt|
|    aarch64|        linux |  10-18-2024 |               2/2 |        Yes |        jdk8u432-b06_adopt|
|        x64|          mac |  10-21-2024 |               2/4 |         No |        jdk8u432-b06_adopt|
|        x64|      windows |  10-21-2024 |               2/5 |         No |        jdk8u432-b06_adopt|
|    ppc64le|        linux |  10-23-2024 |               7/6 |        Yes |        jdk8u432-b06_adopt|
|        x32|      windows |  10-23-2024 |               7/6 |        Yes |        jdk8u432-b06_adopt|
|        x64| alpine-linux |  10-23-2024 |               7/6 |        Yes |        jdk8u432-b06_adopt|
|        arm|        linux |  10-23-2024 |               7/6 |        Yes | jdk8u432-b06-aarch32-20241016_adopt|
|    sparcv9|      solaris |  10-25-2024 |               7/8 |         No |        jdk8u432-b06_adopt|
|        x64|      solaris |  10-30-2024 |              7/13 |         No |        jdk8u432-b06_adopt|

On-Time 6(60%)  Late: 4(40%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.25-ga| Thu Oct 10 14:24:35 UTC 2024 | Thu Oct 10 14:30:30 UTC 2024 |                 0 |
|       jdk-11.0.25+9_adopt| Tue Oct 15 21:08:56 UTC 2024 | Tue Oct 15 21:08:57 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|      windows |  10-17-2024 |               2/1 |        Yes |       jdk-11.0.25+9_adopt|
|        x64|        linux |  10-17-2024 |               2/1 |        Yes |       jdk-11.0.25+9_adopt|
|    aarch64|        linux |  10-17-2024 |               2/1 |        Yes |       jdk-11.0.25+9_adopt|
|        x64|          mac |  10-18-2024 |               2/2 |        Yes |       jdk-11.0.25+9_adopt|
|    ppc64le|        linux |  10-21-2024 |               7/5 |        Yes |       jdk-11.0.25+9_adopt|
|      ppc64|          aix |  10-22-2024 |               7/6 |        Yes |       jdk-11.0.25+9_adopt|
|      s390x|        linux |  10-22-2024 |               7/6 |        Yes |       jdk-11.0.25+9_adopt|
|        arm|        linux |  10-23-2024 |               7/7 |        Yes |       jdk-11.0.25+9_adopt|
|        x64| alpine-linux |  10-23-2024 |               7/7 |        Yes |       jdk-11.0.25+9_adopt|
|    aarch64|          mac |  10-23-2024 |               2/7 |         No |       jdk-11.0.25+9_adopt|
|        x32|      windows |  10-24-2024 |               7/8 |         No |       jdk-11.0.25+9_adopt|

On-Time 9(81%)  Late: 2(18%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.13-ga| Thu Oct 10 14:01:59 UTC 2024 | Thu Oct 10 14:21:15 UTC 2024 |                 0 |
|      jdk-17.0.13+11_adopt| Tue Oct 15 21:43:33 UTC 2024 | Tue Oct 15 21:43:33 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|        linux |  10-17-2024 |               2/1 |        Yes |      jdk-17.0.13+11_adopt|
|    riscv64|        linux |  10-17-2024 |               7/1 |        Yes |      jdk-17.0.13+11_adopt|
|        x64| alpine-linux |  10-17-2024 |               7/1 |        Yes |      jdk-17.0.13+11_adopt|
|        x64|        linux |  10-17-2024 |               2/1 |        Yes |      jdk-17.0.13+11_adopt|
|        x64|          mac |  10-18-2024 |               2/2 |        Yes |      jdk-17.0.13+11_adopt|
|    aarch64|          mac |  10-21-2024 |               2/5 |         No |      jdk-17.0.13+11_adopt|
|    ppc64le|        linux |  10-21-2024 |               7/5 |        Yes |      jdk-17.0.13+11_adopt|
|        arm|        linux |  10-21-2024 |               7/5 |        Yes |      jdk-17.0.13+11_adopt|
|      ppc64|          aix |  10-21-2024 |               7/5 |        Yes |      jdk-17.0.13+11_adopt|
|        x64|      windows |  10-22-2024 |               2/6 |         No |      jdk-17.0.13+11_adopt|
|        x32|      windows |  10-23-2024 |               7/7 |        Yes |      jdk-17.0.13+11_adopt|
|      s390x|        linux |  10-23-2024 |               7/7 |        Yes |      jdk-17.0.13+11_adopt|

On-Time 10(83%)  Late: 2(16%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-21.0.5-ga| Fri Oct 11 19:42:42 UTC 2024 | Fri Oct 11 19:44:18 UTC 2024 |                 0 |
|       jdk-21.0.5+11_adopt| Tue Oct 15 21:11:32 UTC 2024 | Tue Oct 15 21:11:32 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|        linux |  10-16-2024 |               2/0 |        Yes |       jdk-21.0.5+11_adopt|
|        x64|          mac |  10-16-2024 |               2/0 |        Yes |       jdk-21.0.5+11_adopt|
|        x64|        linux |  10-16-2024 |               2/0 |        Yes |       jdk-21.0.5+11_adopt|
|    aarch64| alpine-linux |  10-17-2024 |               7/1 |        Yes |       jdk-21.0.5+11_adopt|
|        x64| alpine-linux |  10-17-2024 |               7/1 |        Yes |       jdk-21.0.5+11_adopt|
|    riscv64|        linux |  10-17-2024 |               7/1 |        Yes |       jdk-21.0.5+11_adopt|
|    aarch64|          mac |  10-18-2024 |               2/2 |        Yes |       jdk-21.0.5+11_adopt|
|        x64|      windows |  10-21-2024 |               2/5 |         No |       jdk-21.0.5+11_adopt|
|    ppc64le|        linux |  10-21-2024 |               7/5 |        Yes |       jdk-21.0.5+11_adopt|
|      ppc64|          aix |  10-22-2024 |               7/6 |        Yes |       jdk-21.0.5+11_adopt|
|      s390x|        linux |  10-23-2024 |               7/7 |        Yes |       jdk-21.0.5+11_adopt|
|    aarch64|      windows |  10-23-2024 |               7/7 |        Yes |       jdk-21.0.5+11_adopt|

On-Time 11(91%)  Late: 1(8%)



</details>

<details><summary>Jul 2024</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u422-ga| Sat Jul  6 16:41:38 UTC 2024 | Wed Jul 24 15:35:34 UTC 2024 |               -17 |
|        jdk8u422-b05_adopt| Wed Jul 17 00:14:20 UTC 2024 | Wed Jul 17 00:14:20 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|          mac |  07-25-2024 |               2/8 |         No |        jdk8u422-b05_adopt|

On-Time 0(0%)  Late: 1(100%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u422-ga| Sat Jul  6 16:41:38 UTC 2024 | Wed Jul 24 15:35:34 UTC 2024 |               -17 |
|        jdk8u422-b05_adopt| Wed Jul 17 00:14:20 UTC 2024 | Wed Jul 17 00:14:20 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-18-2024 |               2/1 |        Yes |        jdk8u422-b05_adopt|
|    aarch64|        linux |  07-19-2024 |               2/2 |        Yes |        jdk8u422-b05_adopt|
|        x64|          mac |  07-19-2024 |               2/2 |        Yes |        jdk8u422-b05_adopt|
|        x64|      windows |  07-19-2024 |               2/2 |        Yes |        jdk8u422-b05_adopt|
|    ppc64le|        linux |  07-22-2024 |               7/5 |        Yes |        jdk8u422-b05_adopt|
|        x32|      windows |  07-23-2024 |               7/6 |        Yes |        jdk8u422-b05_adopt|
|        x64| alpine-linux |  07-23-2024 |               7/6 |        Yes |        jdk8u422-b05_adopt|
|      ppc64|          aix |  07-24-2024 |               7/7 |        Yes |        jdk8u422-b05_adopt|
|        arm|        linux |  07-24-2024 |               7/7 |        Yes | jdk8u422-b05-aarch32-20240718_adopt|
|    sparcv9|      solaris |  07-24-2024 |               7/7 |        Yes |        jdk8u422-b05_adopt|
|        x64|      solaris |  07-26-2024 |               7/9 |         No |        jdk8u422-b05_adopt|

On-Time 10(90%)  Late: 1(9%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u422-ga| Sat Jul  6 16:41:38 UTC 2024 | Wed Jul 24 15:35:34 UTC 2024 |               -17 |
|        jdk8u422-b05_adopt| Wed Jul 17 00:14:20 UTC 2024 | Wed Jul 17 00:14:20 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|          mac |  07-25-2024 |               2/8 |         No |        jdk8u422-b05_adopt|

On-Time 0(0%)  Late: 1(100%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|               jdk8u422-ga| Sat Jul  6 16:41:38 UTC 2024 | Wed Jul 24 15:35:34 UTC 2024 |               -17 |
|        jdk8u422-b05_adopt| Wed Jul 17 00:14:20 UTC 2024 | Wed Jul 17 00:14:20 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-18-2024 |               2/1 |        Yes |        jdk8u422-b05_adopt|
|    aarch64|        linux |  07-19-2024 |               2/2 |        Yes |        jdk8u422-b05_adopt|
|        x64|          mac |  07-19-2024 |               2/2 |        Yes |        jdk8u422-b05_adopt|
|        x64|      windows |  07-19-2024 |               2/2 |        Yes |        jdk8u422-b05_adopt|
|    ppc64le|        linux |  07-22-2024 |               7/5 |        Yes |        jdk8u422-b05_adopt|
|        x32|      windows |  07-23-2024 |               7/6 |        Yes |        jdk8u422-b05_adopt|
|        x64| alpine-linux |  07-23-2024 |               7/6 |        Yes |        jdk8u422-b05_adopt|
|      ppc64|          aix |  07-24-2024 |               7/7 |        Yes |        jdk8u422-b05_adopt|
|        arm|        linux |  07-24-2024 |               7/7 |        Yes | jdk8u422-b05-aarch32-20240718_adopt|
|    sparcv9|      solaris |  07-24-2024 |               7/7 |        Yes |        jdk8u422-b05_adopt|
|        x64|      solaris |  07-26-2024 |               7/9 |         No |        jdk8u422-b05_adopt|

On-Time 10(90%)  Late: 1(9%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.24-ga| Tue Jul  9 08:41:55 UTC 2024 | Tue Jul 16 08:44:32 UTC 2024 |                -7 |
|       jdk-11.0.24+8_adopt| Tue Jul 16 22:07:28 UTC 2024 | Tue Jul 16 22:07:28 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-17-2024 |               2/0 |        Yes |       jdk-11.0.24+8_adopt|
|    aarch64|        linux |  07-18-2024 |               2/1 |        Yes |       jdk-11.0.24+8_adopt|
|        x64|      windows |  07-18-2024 |               2/1 |        Yes |       jdk-11.0.24+8_adopt|
|        x64|          mac |  07-18-2024 |               2/1 |        Yes |       jdk-11.0.24+8_adopt|
|    aarch64|          mac |  07-18-2024 |               2/1 |        Yes |       jdk-11.0.24+8_adopt|
|        x64| alpine-linux |  07-18-2024 |               7/1 |        Yes |       jdk-11.0.24+8_adopt|
|    ppc64le|        linux |  07-19-2024 |               7/2 |        Yes |       jdk-11.0.24+8_adopt|
|      s390x|        linux |  07-23-2024 |               7/6 |        Yes |       jdk-11.0.24+8_adopt|
|        x32|      windows |  07-23-2024 |               7/6 |        Yes |       jdk-11.0.24+8_adopt|
|        arm|        linux |  07-23-2024 |               7/6 |        Yes |       jdk-11.0.24+8_adopt|
|      ppc64|          aix |  07-23-2024 |               7/6 |        Yes |       jdk-11.0.24+8_adopt|

On-Time 11(100%)  Late: 0(0%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-17.0.12-ga| Tue Jul  9 08:19:46 UTC 2024 | Mon Jul 15 20:58:35 UTC 2024 |                -6 |
|       jdk-17.0.12+7_adopt| Tue Jul 16 21:42:21 UTC 2024 | Tue Jul 16 21:42:21 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-17-2024 |               2/0 |        Yes |       jdk-17.0.12+7_adopt|
|        x64|          mac |  07-17-2024 |               2/0 |        Yes |       jdk-17.0.12+7_adopt|
|    aarch64|          mac |  07-17-2024 |               2/0 |        Yes |       jdk-17.0.12+7_adopt|
|    aarch64|        linux |  07-18-2024 |               2/1 |        Yes |       jdk-17.0.12+7_adopt|
|        x64|      windows |  07-18-2024 |               2/1 |        Yes |       jdk-17.0.12+7_adopt|
|    ppc64le|        linux |  07-19-2024 |               7/2 |        Yes |       jdk-17.0.12+7_adopt|
|        x64| alpine-linux |  07-19-2024 |               7/2 |        Yes |       jdk-17.0.12+7_adopt|
|    riscv64|        linux |  07-19-2024 |               7/2 |        Yes |       jdk-17.0.12+7_adopt|
|      s390x|        linux |  07-22-2024 |               7/5 |        Yes |       jdk-17.0.12+7_adopt|
|        arm|        linux |  07-22-2024 |               7/5 |        Yes |       jdk-17.0.12+7_adopt|
|        x32|      windows |  07-22-2024 |               7/5 |        Yes |       jdk-17.0.12+7_adopt|
|      ppc64|          aix |  07-23-2024 |               7/6 |        Yes |       jdk-17.0.12+7_adopt|

On-Time 12(100%)  Late: 0(0%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|             jdk-21.0.4-ga| Tue Jul  9 08:07:16 UTC 2024 | Tue Jul 16 08:39:31 UTC 2024 |                -7 |
|        jdk-21.0.4+7_adopt| Tue Jul 16 22:10:05 UTC 2024 | Tue Jul 16 22:10:05 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  07-17-2024 |               2/0 |        Yes |        jdk-21.0.4+7_adopt|
|    aarch64|        linux |  07-18-2024 |               2/1 |        Yes |        jdk-21.0.4+7_adopt|
|    aarch64| alpine-linux |  07-18-2024 |               7/1 |        Yes |        jdk-21.0.4+7_adopt|
|        x64| alpine-linux |  07-18-2024 |               7/1 |        Yes |        jdk-21.0.4+7_adopt|
|        x64|          mac |  07-19-2024 |               2/2 |        Yes |        jdk-21.0.4+7_adopt|
|    riscv64|        linux |  07-19-2024 |               7/2 |        Yes |        jdk-21.0.4+7_adopt|
|        x64|      windows |  07-19-2024 |               2/2 |        Yes |        jdk-21.0.4+7_adopt|
|    aarch64|          mac |  07-19-2024 |               2/2 |        Yes |        jdk-21.0.4+7_adopt|
|    ppc64le|        linux |  07-22-2024 |               7/5 |        Yes |        jdk-21.0.4+7_adopt|
|      s390x|        linux |  07-22-2024 |               7/5 |        Yes |        jdk-21.0.4+7_adopt|
|      ppc64|          aix |  07-24-2024 |               7/7 |        Yes |        jdk-21.0.4+7_adopt|

On-Time 11(100%)  Late: 0(0%)



</details>

<details><summary>Apr 2024</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|            jdk-11.0.23-ga| Mon Apr  8 05:38:38 UTC 2024 | Mon Apr  8 05:40:58 UTC 2024 |                 0 |
|       jdk-11.0.23+9_adopt| Wed Apr 17 05:07:26 UTC 2024 | Wed Apr 17 05:07:26 UTC 2024 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64|        linux |  04-18-2024 |               2/1 |        Yes |       jdk-11.0.23+9_adopt|
|    aarch64|        linux |  04-18-2024 |               2/1 |        Yes |       jdk-11.0.23+9_adopt|
|    aarch64|          mac |  04-18-2024 |               2/1 |        Yes |       jdk-11.0.23+9_adopt|
|        x64|      windows |  04-18-2024 |               2/1 |        Yes |       jdk-11.0.23+9_adopt|
|    ppc64le|        linux |  04-19-2024 |               7/2 |        Yes |       jdk-11.0.23+9_adopt|
|        x64|          mac |  04-20-2024 |               2/2 |        Yes |       jdk-11.0.23+9_adopt|
|      s390x|        linux |  04-20-2024 |               7/3 |        Yes |       jdk-11.0.23+9_adopt|
|        x32|      windows |  04-22-2024 |               7/5 |        Yes |       jdk-11.0.23+9_adopt|
|      ppc64|          aix |  04-22-2024 |               7/5 |        Yes |       jdk-11.0.23+9_adopt|
|        arm|        linux |  04-23-2024 |               7/6 |        Yes |       jdk-11.0.23+9_adopt|
|        x64| alpine-linux |  04-23-2024 |               7/6 |        Yes |       jdk-11.0.23+9_adopt|

On-Time 11(100%)  Late: 0(0%)



</details>

<details><summary>Sep 2026</summary>

<!-- Retrospective: add a summary paragraph describing how this release period went. -->

<!-- SCORECARD-DATA-START -->


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|          jdk-17.0.20.1-ga| Fri Aug  7 11:31:50 UTC 2026 | Fri Aug  7 11:41:34 UTC 2026 |                 0 |
|     jdk-17.0.20.1+1_adopt| Tue Aug 18 17:58:39 UTC 2026 | Tue Aug 18 17:59:29 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64| alpine-linux |  08-19-2026 |               7/0 |        Yes |     jdk-17.0.20.1+1_adopt|

On-Time 1(100%)  Late: 0(0%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|          jdk-21.0.12.1-ga| Fri Aug  7 11:31:48 UTC 2026 | Fri Aug  7 11:41:34 UTC 2026 |                 0 |
|     jdk-21.0.12.1+1_adopt| Tue Aug 18 17:23:33 UTC 2026 | Tue Aug 18 17:24:24 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|    aarch64|          mac |  08-19-2026 |               2/0 |        Yes |     jdk-21.0.12.1+1_adopt|
|        x64|          mac |  08-19-2026 |               2/0 |        Yes |     jdk-21.0.12.1+1_adopt|
|        x64| alpine-linux |  08-19-2026 |               7/0 |        Yes |     jdk-21.0.12.1+1_adopt|
|        x64|        linux |  08-19-2026 |               2/0 |        Yes |     jdk-21.0.12.1+1_adopt|
|    aarch64| alpine-linux |  08-19-2026 |               7/0 |        Yes |     jdk-21.0.12.1+1_adopt|

On-Time 5(100%)  Late: 0(0%)



---


|                       Tag|               Tagged Date |       Commit Date |              Days |
|                       ---|                       --- |               --- |               --- |
|           jdk-25.0.4.1-ga| Fri Aug  7 11:31:46 UTC 2026 | Fri Aug  7 11:41:34 UTC 2026 |                 0 |
|      jdk-25.0.4.1+1_adopt| Tue Aug 18 17:52:40 UTC 2026 | Tue Aug 18 17:53:16 UTC 2026 |                 0 |


|   Platform|           OS |    Released | Target/Actual(days) |    On-time |                      RTAG|
|        ---|          --- |         --- |               --- |        --- |                       ---|
|        x64| alpine-linux |  08-19-2026 |               7/0 |        Yes |      jdk-25.0.4.1+1_adopt|
|        x64|          mac |  08-19-2026 |               2/1 |        Yes |      jdk-25.0.4.1+1_adopt|

On-Time 2(100%)  Late: 0(0%)



</details>

