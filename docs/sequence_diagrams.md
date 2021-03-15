see https://mermaid-js.github.io/mermaid/diagrams-and-syntax-and-examples/sequenceDiagram.html
````mermaid
sequenceDiagram
participant P as Page
participant B as BLoc
participant R as Repository
participant S as Service
Note over P: Initial
P->>B: InitialiseRequest
B->>R: Intialising
Note over B: Intialising
B-xP: Intialising

alt Known device?
R->>S: Connect device
S-xR: Service List?

else
R->>S: StartScan
S-xR: DeviceList
R-xB: DeviceList
B-xP: DeviceList
end

Note over P: Requested
Note over P: Connected
Note over P: NoDevice
Note over P: KnownDevice
Note over P: Initial
Note over B: List
Note over B: NoDevices

Note over B: Selected
````