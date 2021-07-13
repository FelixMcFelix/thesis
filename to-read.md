# ddn use-cases
## nsdi '21
* https://www.usenix.org/conference/nsdi21/presentation/kansal -- Alohamora: Reviving HTTP/2 Push and Preload by Adapting Policies On the Fly
 - use RL to learn an HTTP/2 push/preload policy
 - deep rl (lstms, rnns)
* https://www.usenix.org/conference/nsdi21/presentation/fu -- On the Use of ML for Blackbox System Performance Prediction
 - Seems to be general; i.e., attempting to framework around the concept of RL/ML-driven optimisation.
 - read to make sure, but seems to be suggesting that this did not work? i.e., that we need either co-design or new ML developments 
* https://www.usenix.org/conference/nsdi21/presentation/shi -- Adapting Wireless Mesh Network Configuration from Simulation to Reality via Deep Learning based Domain Adaptation
 - Not entirely sure of applicability
* https://www.usenix.org/conference/nsdi21/presentation/jog -- One Protocol to Rule Them All: Wireless Network-on-Chip using Deep Reinforcement Learning
 - Deep RL for protocol design (wireless on-chip comms with low interference etc. derived from comms patterns)

## sigcomm '20
* https://dl.acm.org/doi/10.1145/3387514.3405856 -- Neural-Enhanced Live Streaming: Improving Live Video Ingest via Online Learning
 - dynamically learning which patches to DNN super-scale to maximise video quiality without harming QoE.
* https://dl.acm.org/doi/10.1145/3387514.3405859 -- Interpreting Deep Learning-Based Networking Systems
 - convert DNN-based DDN models to more interpretable forms? What is the accuracy cost of so doing?
* https://dl.acm.org/doi/10.1145/3387514.3405886 -- A Computational Approach to Packet Classification
 - Similar idea to neurocuts, looks like normal NNs invoilved though? emph on CPU training, unsure where inference happens
* https://dl.acm.org/doi/10.1145/3387514.3405892 -- Classic Meets Modern: a Pragmatic Learning-Based Congestion Control for the Internet
 - DRL CCA -- seems to be hybrid, which they claim and/or show has convergence/safety/other benefits over clean-slate learning

## sigcomm netai woirkshop '20
* https://dl.acm.org/doi/10.1145/3405671.3405809 -- SmartEntry: Mitigating Routing Update Overhead with Reinforcement Learning for Traffic Engineering
 - Traffic engineering: ECMP for most, RL for (presumably) elephants
 - This idea feels very very similar to tomsething I read before?
* https://dl.acm.org/doi/10.1145/3405671.3405811 -- SAM: Self-Attention based Deep Learning Method for Online Traffic Classification
 - trafic class using self-attention based methods
* https://dl.acm.org/doi/10.1145/3405671.3405813 -- Neural Packet Routing
 - `the first deep-learning-based distributed routing system (named NGR) that can achieve the connectivity guarantee while still attaining the routing optimality. `
 - neural networks... what algos? just ML?
* https://dl.acm.org/doi/10.1145/3405671.3405816 -- DeepBGP: A Machine Learning Approach for BGP Configuration Synthesis
 - Graph NNs, using evolution strategies for learning
* https://dl.acm.org/doi/10.1145/3405671.3405817 -- An Adaptive Tree Algorithm to Approach Collision-Free Transmission in Slotted ALOHA
 - RL (Q-learning -- what policy?) for wireless collision avoidance.

## infocom '21
* 6Hit: A Reinforcement Learning-based Approach to Target Generation for Internet-wide IPv6 Scanning
* Asynchronous Deep Reinforcement Learning for Data-Driven Task Offloading in MEC-Empowered Vehicular Networks 
* DRL-OR: Deep Reinforcement Learning-based Online Routing for Multi-type Service Requirements 
 - Multiagent? Hmm. Mininet + trace-based eval...
* Owl: Congestion Control with Partially Invisible Networks via Reinforcement Learning
 - CCAs!
* Leveraging Domain Knowledge for Robust Deep Reinforcement Learning in Networking
 - Teacher/student networks to curtail edge behaviour and poor tail performance of purely DRL-based approaches.
* INCdeep: Intelligent Network Coding with Deep Reinforcement Learning 
 - Link-layer coding design?
* A Universal Transcoding and Transmission Method for Livecast with Networked Multi-Agent Reinforcement Learning 
 - Video transcoding/transmission optimisation? Can't read yet...
* Bringing Fairness to Actor-Critic Reinforcement Learning for Network Utility Optimization
 - Might be interesting if this paper states, e.g., that most existing DDN things AREN'T being fair already...

## infocom '20
* https://ieeexplore.ieee.org/document/9155411 -- Stick: A Harmonious Fusion of Buffer-based and Learning-based Approach for Adaptive Streaming
 - Video ABR using DRL -- Seems to be better than Pensieve?
* https://ieeexplore.ieee.org/document/9155492 -- PERM: Neural Adaptive Video Streaming with Multi-path Transmission
 - actor-critic? ABR selection and multipath transmission selection?
* https://ieeexplore.ieee.org/document/9155521 -- ReLoca: Optimize Resource Allocation for Data-parallel Jobs using Deep Learning
 - DNN-based compute resource allocation?
* https://ieeexplore.ieee.org/document/9155373/ -- Intelligent Video Caching at Network Edge: A Multi-Agent Deep Reinforcement Learning Approach
 - multi-agent deep rl for CDN caching strategies

## sigcomm '19
* https://dl.acm.org/doi/10.1145/3341302.3342080 -- Learning scheduling algorithms for data processing clusters
 - Deep RL to learn job scheduling.
* https://dl.acm.org/doi/10.1145/3341302.3342221 -- Neural packet classification
 - You read this one!

## sigcomm netai '19
* https://dl.acm.org/doi/10.1145/3341216.3342206 -- Runtime Verification of P4 Switches with Reinforcement Learning
 - RL for more diverse bug discovery via fuzzing for P4 programs.
* https://dl.acm.org/doi/10.1145/3341216.3342207 -- NetBOA: Self-Driving Network Benchmarking
 - Perf bottleneck identification? How?
* https://dl.acm.org/doi/10.1145/3341216.3342218 -- Verifying Deep-RL-Driven Systems
 - Verification of Deep RL -- maybe put into a `challenges` section?
 - also discusses explainability risks etc.
* https://dl.acm.org/doi/10.1145/3341216.3342210 -- Cracking Open the Black Box: What Observations Can Tell Us About Reinforcement Learning Agents
 - Study on  interpretability of video rate adaptation (is it pensieve?).
* https://dl.acm.org/doi/10.1145/3341216.3342211 -- DeePCCI: Deep Learning-based Passive Congestion Control Identification
 - **Disturbingly close to Seidr**, without the focus on how to build the historgrams in-network. Might be worth studying to see how their NN architecture and input data make it effective.
 - Does this use online slices of histos, or full trace?
* https://dl.acm.org/doi/10.1145/3341216.3342214 -- RL-Cache: Learning-Based Cache Admission for Content Delivery
 - RL for determining "what to cache in an Akamai CDN".

## conext '20
* https://dl.acm.org/doi/10.1145/3386367.3431294 -- Drop the packets: using coarse-grained data to detect video performance issues
 - ML to estimate QoE metrics when we can't have packet-level metrics for video streaming (i.e., due to cost!).
* https://dl.acm.org/doi/10.1145/3386367.3432588 -- Job scheduling for large-scale machine learning clusters
 - Using ML to better schedule ML training cluster tasks...
* https://dl.acm.org/doi/10.1145/3386367.3433030 -- MPCC: online learning multipath transport
 - online learning, but not RL. make sure to read!

## eurosys '20
* https://dl.acm.org/doi/10.1145/3342195.3387524 -- Autopilot: workload autoscaling at Google
 - ML to estimate RAM/CPU bounds needed by jobs (i.e., to prevent resource use by overprovisioning)

# distributed dnn training
## nsdi '21
* https://www.usenix.org/conference/nsdi21/presentation/hwang -- Elastic Resource Sharing for Distributed Deep Learning
 - This is scheduling work, maybe use as evidence that people work on this problem.
* https://www.usenix.org/conference/nsdi21/presentation/lao -- ATP: In-network Aggregation for Multi-tenant Learning
 - Best paper
 - in-switch aggregation! PDPs!
* https://www.usenix.org/conference/nsdi21/presentation/sapio -- Scaling Distributed Machine Learning with In-Network Aggregation
 - in-switch aggregation! PDPs!

## sigcomm netai woirkshop '20
* https://dl.acm.org/doi/10.1145/3405671.3405810 -- Is Network the Bottleneck of Distributed Training?
 - attempt to analyse the actual needed degrees of compression/aggregation from a bandwidth perspective? what about incast?

## infocom '21
* Live Gradient Compensation for Evading Stragglers in Distributed Learning 
* Exploiting Simultaneous Communications to Accelerate Data Parallel Distributed Deep Learning 
* DC2: Delay-aware Compression Control for Distributed Machine Learning
* Near-Optimal Topology-adaptive Parameter Synchronization in Distributed DNN Training 

## infocom '20
* https://ieeexplore.ieee.org/document/9155446/ -- Preemptive All-reduce Scheduling for Expediting Distributed DNN Training
* https://ieeexplore.ieee.org/document/9155494/ -- Optimizing Federated Learning on Non-IID Data with Reinforcement Learning
 - Fed + DRL?
* https://ieeexplore.ieee.org/document/9155282/ -- Geryon: Accelerating Distributed CNN Training by Network-Level Flow Scheduling
* https://ieeexplore.ieee.org/document/9155269 -- Communication-Efficient Distributed Deep Learning with Merged Gradient Sparsification on GPUs

## conext '20
* https://dl.acm.org/doi/10.1145/3386367.3432728 -- Optimizing distributed training deployment in heterogeneous GPU clusters
 - Tries to solve optimal allocation in contended networks, different GPU models at different devices, etc...
* https://dl.acm.org/doi/10.1145/3386367.3432588 -- Job scheduling for large-scale machine learning clusters
 - Using ML to better schedule ML training cluster tasks...

## nsdi '20
* https://www.usenix.org/conference/nsdi20/presentation/yan -- Learning in situ: a randomized experiment in video streaming 
 - ABR optimisation -- outlines that real network behaviour sort of invalidates past results? Double check
* https://www.usenix.org/conference/nsdi20/presentation/song -- Learning Relaxed Belady for Content Distribution Network Caching 
 - CDN caching, "ML"

## eurosys '21
* https://dl.acm.org/doi/10.1145/3447786.3456233 -- DGCL: an efficient communication library for distributed GNN training
 - GNN training
* https://dl.acm.org/doi/10.1145/3447786.3456229 -- FlexGraph: a flexible and efficient distributed framework for GNN training
 - GNN Training
* https://dl.acm.org/doi/10.1145/3447786.3456245 -- RubberBand: cloud-based hyperparameter tuning

## eurosys '20
* https://dl.acm.org/doi/10.1145/3342195.3387555 -- Balancing efficiency and fairness in heterogeneous GPU clusters for deep learning
 - again, optimising for heterogenenous GPU clusters.
* https://dl.acm.org/doi/10.1145/3342195.3387525 -- Env2Vec: accelerating VNF testing with deep learning
 - ML for automatic perf testing of VNFs deployed on heterogeneous clouds?

# pdp stuff of importance
## nsdi '21
* https://www.usenix.org/conference/nsdi21/presentation/yu -- Twenty Years After: Hierarchical Core-Stateless Fair Queueing
 - PDP allowing revisit of older techniques.
* https://www.usenix.org/conference/nsdi21/presentation/sultana -- Flightplan: Dataplane Disaggregation and Placement for P4 Programs
 - break up and decompose P4 programs, distribute through network.

## sigcomm '20
* https://dl.acm.org/doi/10.1145/3387514.3405852 -- Switch Code Generation Using Program Synthesis
 - could be interesting, don't know much about program synthesis
 - DSL, plus their compiler, plus `switch simulator`
* https://dl.acm.org/doi/10.1145/3387514.3406214 -- Flow Event Telemetry on Programmable Data Plane
 - telemtry, geared towards 'network performance anomalies'
 - "e.g. packet drops, congestion, path change, and packet pause."
* https://dl.acm.org/doi/10.1145/3387514.3405855 -- TEA: Enabling State-Intensive Network Functions on Programmable Switches
 - use other servers as DRAM storage for PDP appls, reached over dataplane rather than hammering PCIe bus to tofino controller.
* https://dl.acm.org/doi/10.1145/3387514.3405857 -- NetLock: Fast, Centralized Lock Management Using Programmable Switches
 - related to KV-store? Distributed lock managers
* https://dl.acm.org/doi/10.1145/3387514.3405865 -- BeauCoup: Answering Many Network Traffic Queries, One Memory Update at a Time
 - Telemetry use case -- support several counting queries in parallel on PISA wrt processing limits.
* https://dl.acm.org/doi/10.1145/3387514.3405869 -- Gallium: Automated Software Middlebox Offloading to Programmable Switches
 - automatic conversion of program to "what can be done in P4" and "what needs to be x86'd"
* https://dl.acm.org/doi/pdf/10.1145/3387514.3405870 --
 - Extension of P4: add reaction functions in C run on the attached controller CPU.
 - probably very interesting
 - Seem to suggest that they have an RL use-case, but this just looks like offloading to the CPU to me...
* https://dl.acm.org/doi/10.1145/3387514.3405872 -- Composing Dataplane Programs with μP4
 - composition of smaller, platform indep, P4 programs
* https://dl.acm.org/doi/10.1145/3387514.3405877 -- OmniMon: Re-architecting Network Telemetry with Resource Efficiency and Full Accuracy
 - telemetry use case
* https://dl.acm.org/doi/10.1145/3387514.3405879 -- Lyra: A Cross-Platform Language and Compiler for Data Plane Programming on Heterogeneous ASICs
 - Language and compiler to target several PDP environs
* https://dl.acm.org/doi/10.1145/3387514.3405888 -- bf4: towards bug-free P4 programs
* https://dl.acm.org/doi/10.1145/3387514.3405894 -- PINT: Probabilistic In-band Network Telemetry

## sigcomm spin '20
* https://dl.acm.org/doi/10.1145/3405669.3405823 -- Measuring TCP Round-Trip Time in the Data Plane
 - seq-ack matching I was using in HT?

## infocom '21
* INT-label: Lightweight In-band Network-Wide Telemetry via Interval-based Distributed Labelling
 - I think I actually reviewed this one...
* Programmable Switches for in-Networking Classification 
 - Don't recognise authors, seems to be a framework for simple models
* Fix with P6: Verifying Programmable Switches at Runtime 
 - ML-based fuzzing
* Making Multi-String Pattern Matching Scalable and Cost-Efficient with Programmable Switching ASICs 
 - use case: string pattern matching? is this like a faster aho-corasick?

## sigcomm '19
* https://dl.acm.org/doi/10.1145/3341302.3342085 -- HPCC: high precision congestion control
 - Datacentre CCN powered by INT and PDP.
* https://dl.acm.org/doi/10.1145/3341302.3342079 -- Offloading distributed applications onto smartNICs using iPipe
 - Automated offload to multicore SoC-based SmartNICs
 - Doesn't incluide netronome, but does name OTHERS!!!
* https://dl.acm.org/doi/10.1145/3341302.3342090 -- Fast, scalable, and programmable packet scheduler in hardware
 - PIFO/PIEO in NetFPGA at the edge of the host.

## sigcomm netai '19
* https://dl.acm.org/doi/10.1145/3341216.3342208 -- ONTAS: Flexible and Scalable Online Network Traffic Anonymization System
 - Python compiler -> PISA/P4 programs for linerate traffic anonymisation (i.e., as input to other pipelines in a privact-preserving way.)

## conext '20
* https://dl.acm.org/doi/10.1145/3386367.3432729 -- FCM-sketch: generic network measurements with data plane support
 - Better count-min sketches for Tofino & P4?
* https://dl.acm.org/doi/10.1145/3386367.3432063 -- A modular compiler for network programming languages
 - New IR for targeting many network programming languages/dataplanes
* https://dl.acm.org/doi/10.1145/3386367.3431309 -- Testing compilers for programmable switches through switch hardware simulation
 - Compiler + fuzzer as backend / compiler target.
 - Any issues with discrepancies between their switch model and expected/reality?
* https://dl.acm.org/doi/10.1145/3386367.3431313 -- Finding hard-to-find data plane bugs with a PTA
 - Abstract over device classes.
 - Noa paper
* https://dl.acm.org/doi/10.1145/3386367.3431295 -- Parking packet payload with P4
 - use PDPs to send only headers into NF chains (allowing them to run fasterm in theory); use PDP to park body elsewhere!
* https://dl.acm.org/doi/10.1145/3386367.3431298 -- Newton: intent-driven network traffic monitoring
 - framework for dataplane traffic monitoring?
* https://dl.acm.org/doi/10.1145/3386367.3431315 -- Forwarding and routing with packet subscriptions
 - Best Paper!
 - PDP to support new network designs; i.e. hosts register interest in packets with (stateful) predicates, and the network delivers them accordingly.
 - i.e., in-network Apache Kafka?
* https://dl.acm.org/doi/10.1145/3386367.3431290 -- DeepMatch: practical deep packet inspection in the data plane using network processors
 - Regex offloading for packet bodies into NFP hardware.
* https://dl.acm.org/doi/10.1145/3386367.3431302 -- ZipLine: in-network compression at line speed
 - idea: (de)compress at first/last hops? verify their use-case...
* https://dl.acm.org/doi/10.1145/3386367.3431303 -- Detecting routing loops in the data plane
 - P4-based, FPGA targets.

## conext '19
* https://dl.acm.org/doi/10.1145/3359989.3365410 -- PURR: a primitive for reconfigurable fast reroute: hope for the best and program for the worst
* https://dl.acm.org/doi/10.1145/3359989.3365408 -- Fine-grained queue measurement in the data plane
* https://dl.acm.org/doi/10.1145/3359989.3365406 -- 
HyperTester: high-performance network testing driven by programmable switches

## nsdi '20
* https://www.usenix.org/conference/nsdi20/presentation/barbette -- A High-Speed Load-Balancer Design with Guaranteed Per-Connection-Consistency 
 - Loadbalancing in Tofino?
* https://www.usenix.org/conference/nsdi20/presentation/sharma -- Programmable Calendar Queues for High-speed Packet Scheduling 
 - AQM
* https://www.usenix.org/conference/nsdi20/presentation/hsu -- Contra: A Programmable System for Performance-aware Routing
 - Routing policy -> compiles to P4 programs -> adaptive distance-vector routing subject to policy constraints.
* https://www.usenix.org/conference/nsdi20/presentation/takruri -- FLAIR: Accelerating Reads with Consistency-Aware Network Routing 
 - KV Store

## eurosys '20
* https://dl.acm.org/doi/10.1145/3342195.3387557 -- Accessible near-storage computing with FPGAs
 - In-network automated storage of data to accelerate later lookups? DC use case?

# maybe useful for trusded?
## nsdi '21
* https://www.usenix.org/conference/nsdi21/presentation/campbell -- Avenir: Managing Data Plane Diversity with Control Plane Synthesis
 - attempts to handle heterogeneity "in hardware, drivers, interfaces, and protocols"
* https://www.usenix.org/conference/nsdi21/presentation/liu-guyue -- Don't Yank My Chain: Auditable NF Service Chaining
 - somehow verifies that the NFs are doing what they say, + verified routing protocols, and efficient
* https://www.usenix.org/conference/nsdi21/presentation/li -- Programming Network Stack for Middleboxes with Rubik
* https://www.usenix.org/conference/nsdi21/presentation/sultana -- Flightplan: Dataplane Disaggregation and Placement for P4 Programs
 - break up and decompose P4 programs, distribute through network.

## sigcomm '20
* https://dl.acm.org/doi/10.1145/3387514.3405852 -- Switch Code Generation Using Program Synthesis
 - could be interesting, don't know much about program synthesis
 - DSL, plus their compiler, plus `switch simulator`
* https://dl.acm.org/doi/10.1145/3387514.3405853 -- Concurrent Entanglement Routing for Quantum Networks: Model and Designs
* https://dl.acm.org/doi/10.1145/3387514.3405863 -- Fault Tolerant Service Function Chaining
* https://dl.acm.org/doi/10.1145/3387514.3405868 -- Contention-Aware Performance Prediction For Virtualized Network Functions
 - Resource contention (i.e., memory/cache) modelling
* https://dl.acm.org/doi/10.1145/3387514.3405869 -- Gallium: Automated Software Middlebox Offloading to Programmable Switches
 - automatic conversion of program to "what can be done in P4" and "what needs to be x86'd"
* https://dl.acm.org/doi/10.1145/3387514.3405872 -- Composing Dataplane Programs with μP4
 - composition of smaller, platform indep, P4 programs
* https://dl.acm.org/doi/10.1145/3387514.3405879 -- Lyra: A Cross-Platform Language and Compiler for Data Plane Programming on Heterogeneous ASICs
 - Language and compiler to target several PDP environs
* https://dl.acm.org/doi/10.1145/3387514.3405895 -- SmartNIC Performance Isolation with FairNIC: Programmable Networking for the Cloud
 - Performance isloation for SmartNIC offload programs (i.e., run by several clients)

## infocom '21
* Safety Critical Networks using Commodity SDNs

## sigcomm '19
* https://dl.acm.org/doi/10.1145/3341302.3342070 -- A link layer protocol for quantum networks
* https://dl.acm.org/doi/10.1145/3341302.3342079 -- Offloading distributed applications onto smartNICs using iPipe
 - Automated offload to multicore SoC-based SmartNICs
 - Doesn't incluide netronome, but does name OTHERS!!!

## conext '20
* https://dl.acm.org/doi/10.1145/3386367.3431293 -- Designing a quantum network protocol
* https://dl.acm.org/doi/10.1145/3386367.3431305 -- Assessing the overhead of post-quantum cryptography in TLS 1.3 and SSH
* https://dl.acm.org/doi/10.1145/3386367.3432063 -- A modular compiler for network programming languages
 - New IR for targeting many network programming languages/dataplanes

## eurosys '21
* https://dl.acm.org/doi/10.1145/3447786.3456255 -- rkt-io: a direct I/O stack for shielded execution
 - Very good discussion of the issues surrounding trusted execution environments, their effects on I/O etc.

# `CCAs still researched'`
## nsdi '21
* https://www.usenix.org/conference/nsdi21/presentation/liu -- Breaking the Transience-Equilibrium Nexus: A New Approach to Datacenter Packet Transport
 - Maybe emphasise two strands: LFNs, and DCs

## sigcomm '20
* https://dl.acm.org/doi/10.1145/3387514.3405850 -- TACK: Improving Wireless Transport Performance by Taming Acknowledgments
 - Making TCP better for WLANs
* https://dl.acm.org/doi/10.1145/3387514.3405878 -- Aeolus: A Building Block for Proactive Transport in Datacenters
* https://dl.acm.org/doi/10.1145/3387514.3405880 -- PBE-CC: Congestion Control via Endpoint-Centric, Physical-Layer Bandwidth Measurements
 - Use radio strnegth/BW data in CCA decision-making
 - do remember that CCA design  is valuable for clients too -- since waiting for RTOs will absolutely screw mobile requests in lossy environs.
* https://dl.acm.org/doi/10.1145/3387514.3406591 -- Swift: Delay is Simple and Effective for Congestion Control in the Datacenter
* https://dl.acm.org/doi/10.1145/3387514.3405891 -- PCC Proteus: Scavenger Transport And Beyond
 - CCA which voluntarily yields to let time-sensitive traffic through (but still aims for high BW)?
* https://dl.acm.org/doi/10.1145/3387514.3405892 -- Classic Meets Modern: a Pragmatic Learning-Based Congestion Control for the Internet
 - DRL CCA -- seems to be hybrid, which they claim and/or show has convergence/safety/other benefits over clean-slate learning

## sigcomm '19
* https://dl.acm.org/doi/10.1145/3341302.3342085 -- HPCC: high precision congestion control
 - Datacentre CCN powered by INT and PDP.
* https://dl.acm.org/doi/10.1145/3341302.3342077 -- End-to-end transport for video QoE fairness
 - Fair, video-specific congestion-aware transport ("QoE fairness")

## conext '20
* https://dl.acm.org/doi/10.1145/3386367.3431316 -- RoCC: robust congestion control for RDMA
 - parts implementable in p4 asics?
* https://dl.acm.org/doi/10.1145/3386367.3433030 -- MPCC: online learning multipath transport
 - online learning, but not RL. make sure to read!


# Big SDN is where we're at
## nsdi '21
* https://www.usenix.org/conference/nsdi21/presentation/ferguson -- Orion: Google's Software-Defined Networking Control Plane
* https://www.usenix.org/conference/nsdi21/presentation/shao -- Accessing Cloud with Disaggregated Software-Defined Router

# Poisoning defences?
## infocom '21
* Robust Online Learning against Malicious Manipulation with Application to Network Flow Classification 
* Invisible Poison: A Blackbox Clean Label Backdoor Attack to Deep Neural Networks 
 - An attack and its proposed defence.

# evasion/adversarial examples
## infocom '21
* MANDA: On Adversarial Example Detection for Network Intrusion Detection System 
 - NSL-KDD *sick*
* Detecting Localized Adversarial Examples: A Generic Approach using Critical Region Analysis
* Analyzing Learning-Based Networked Systems with Formal Verification
 - defence / robustnmess estimation.

## conext '20
* https://dl.acm.org/doi/10.1145/3386367.3431311 -- You do (not) belong here: detecting DPI evasion attacks with context learning
 - ML to detect? I assume this is closer to main security than adversarial example-like evasion.


# MISC
Infocom 21 has some federated learning resources to discuss, maybe.
