**Folder Structure of the project**:

_design_ - Contains the design files for the HTAX protocol.

_sim_ - Contains the simulation and run files.

_tb_ - Contains the testbench files(interfaces, monitor, sequencer, Driver, Scoreboard etc..,)

_test_ - Contains the directed and random test cases.



**About the design/protocol**:

The High Throughput Advanced X-Bar (**HTAX**) is a protocol agnostic, high throughput, low latency crossbar architecture. It follows a flexible and modularized approach that enables the HTAX to be used in various applications, in the area of on-chip and off-chip and node-to-node interconnection networks. The HTAX can be flexibly configured in terms of supported number of ports, virtual channels, bus width and buffer capabilities. It supports single stage and multi stage configurations which offers low latency operation for low radix switches but also the possibility to scale to a virtually infinite amount of ports. This enables it to be used in both direct connected and multi dimensional torus topologies. Interconnection networks can be applied in a wide range of applications ranging from high latency node-to-node implementations to on-chip networks that require thousands of ports and low latency. The characteristics of these applications regarding buffer sizes, topologies, latency and bandwidth differ dramatically therefore posing different sets of requirements. Due to its flexiblity the HTAX is able to satify all of them. The HTAX consists of bidirectional ports that are interconnected by a switch matrix, as shown in figure 1. The ports provide a transmit (TX) and receive (RX) interface and can be input buffered or bufferless. The HTAX supports an arbitrary number of virtual channels for Quality of Service (QoS) and deadlock avoidance. To handle congestion both virtual output queueing (VOQ) and RECN mechanism is supported for high radix switches.  


<img width="548" alt="image" src="https://github.com/user-attachments/assets/d6cf4acc-9342-4717-971b-fc38d27051b0">


_Note_: The design contains a bug. More details can be found in the lab_report in the sim directory.
