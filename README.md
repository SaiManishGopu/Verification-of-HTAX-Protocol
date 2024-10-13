The High Throughput Advanced X-Bar (HTAX) is a protocol agnostic, high throughput, low
 latency crossbar architecture. It follows a flexible and modularized approach that enables the
 HTAX to be used in various applications, in the area of on-chip and off-chip and node-to-node
 interconnection networks. The HTAX can be flexibly configured in terms of supported number
 of ports, virtual channels, bus width and buffer capabilities. It supports single stage and multi
 stage configurations which offers low latency operation for low radix switches but also the
 possibility to scale to a virtually infinite amount of ports. This enables it to be used in both
 direct connected and multi dimensional torus topologies. Interconnection networks can be
 applied in a wide range of applications ranging from high latency node-to-node implementa
tions to on-chip networks that require thousands of ports and low latency. The characteristics
 of these applications regarding buffer sizes, topologies, latency and bandwidth differ dramati
cally therefore posing different sets of requirements. Due to its flexiblity the HTAX is able to
 satify all of them.
 The HTAX consists of bidirectional ports that are interconnected by a switch matrix, as shown
 in figure 1. The ports provide a transmit (TX) and receive (RX) interface and can be input buff
ered or bufferless. The HTAX supports an arbitrary number of virtual channels for Quality of
 Service (QoS) and deadlock avoidance. To handle congestion both virtual output queueing
 (VOQ) and RECN mechanism is supported for high radix switches.  
