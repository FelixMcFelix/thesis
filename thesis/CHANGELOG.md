# Changelog

Post-viva changes and minor corrections \[section references describe old ToCs\]. Roughly 8 pages of removals, 1 page of added connections:

* Sec 3.1 – Use cases: reduced mention of specific RL algorithms, commentary on correctness and specific weaknesses of DDN use cases.
  * Rationale: main focus is on design, ways to express solutions as MDPs.

* Removed Sec 3.4 – Collaborative training.
  * Mention of FL and distributed ML placed into Intro to Ch 3 as 'out-of-scope'.
  * Contribs, summaries in Ch.1 adapted to limit mention of "how networks can benefit ML" to PDP use cases.

* Removed Sec 3.3.5 – Modern RL algorithms.
  * These algorithms do not feature in any future technical chapters, and mostly consist of neural network-based adaptations so have limited applicability or capability to adapt in-network.
  * Folded and trimmed discussion of ES methods into tail end of Sec 3.3.4.

* Renamed Sec 3.3.6 – "RL design considerations" -> "RL use considerations".

* Removed "Tooling" paragraph from Sec 3.3.6 – Learning an approximation.

* Added extra content to most opening paragraphs of sections in Ch 2--3 to reiterate value in overall thesis:
  * 2.1 -- From fixed-function: Paragraph opening "For historical value..."
  * 2.2 -- Modern programmable dataplanes: Paragraph opening "In parallel with SDN's development..."
  * 2.3 -- Offloading and in-network compute: added sentences to final paragraph "This expands on the raw tooling..."
  * 2.4 -- In-network compute use-cases: expanded justification "benefiting the system designs in..."
  * 3.1 -- Use cases: Paragraph opening "The main implication for this thesis..."
  * 3.2 -- Function approximation: further justify neural networks by sentence "Covering their basics also arms us with..."
  * 3.3 -- Learning an approximation: Expanded exposition on value of discussing algorithms ("This allows us to comment on..."), and use considerations ("Finally, this allows us to consider...").
  * 3.4 -- Numerical representations:  "To consider how to perform inference and learning in different classes of PDP hardware..."

* Minor typos in Ch 2, 3.

* Acknowledgments -- slight extension.

* Original publications -- added note of SICSA award to OPaL paper.
