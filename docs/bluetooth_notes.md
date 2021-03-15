Disable/enable bluetooth on phone

Restart phone

Check with basic flutter_blue example






## These lines repeating frequently, after device firmware upgrade
https://github.com/NordicSemiconductor/Android-BLE-Library/issues/17

D/BluetoothGatt(16240): onConnectionUpdated() - Device=C4:4F:33:6A:AC:47 interval=6 latency=0 timeout=500 status=0
D/BluetoothGatt(16240): onConnectionUpdated() - Device=C4:4F:33:6A:AC:47 interval=39 latency=0 timeout=500 status=0
D/BluetoothGatt(16240): onConnectionUpdated() - Device=C4:4F:33:6A:AC:47 interval=6 latency=0 timeout=500 status=0
D/BluetoothGatt(16240): onConnectionUpdated() - Device=C4:4F:33:6A:AC:47 interval=39 latency=0 timeout=500 status=0


onConnectionUpdated with interval 6 means that Android does service discovery. To make it as quick as possible, it switches the connection interval to lowest possible value. 6 means 7.5ms.
When you don't get it, it means that services were obtained from the cache and no service discovery we performed.

Tried
- close Nordic, Meshtastic BLE apps,
- unpair, re-pair device



## Build for release needs special setting:
https://github.com/pauldemarco/flutter_blue/issues/662#issuecomment-741710564

Fixed this issue on release build by disabling shrink resources and minifyEnabled at android/app/build.gradle
But It's strange as It's disabling ProGuard. So what about android apk file source securities.
So It must need a proactive solution for the same for It should work with ProGuard enable.

flutter build apk --no-shrink
worked for me.


## Sleep etc
On wake we see
D/FlutterBluePlugin(29790): [onConnectionStateChange] status: 0 newState: 2
On device sleep (or BLE sleep)
D/FlutterBluePlugin(19981): [onConnectionStateChange] status: 19 newState: 0

https://stackoverflow.com/questions/45056566/android-ble-gatt-connection-change-statuses
Programmatically disconnected - 0
Device went out of range - 8
Disconnected by device - 19
Issue with bond - 22
Device not found - 133(some phone it gives 62)

