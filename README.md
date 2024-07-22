## Working
![flow chart](https://github.com/user-attachments/assets/8ea9d08a-6e62-4c75-94d3-fb447d392739)

> This mobile application auto-zooms into detected objects using a locally running [detection model](https://github.com/DILPREET1910/intelligent-autozoom/blob/main/assets/models/ssd_mobilenet.tflite). The attached flowchart illustrates the handshake between the mobile device and the detection server. Unlike traditional methods where every 10th frame (or any set interval) is sent for detection—resulting in delayed and potentially missed detections—this logic ensures real-time performance by sending new frames only when the server is idle. Given the camera feed might be 120fps, with a new frame every half a second, while detection can take 1-2 seconds per frame, this approach avoids manual frame selection and prevents lag. This efficient management of frame processing maintains accurate, timely detection and display or result. Eliminating the need to wait for multiple frames when the model is no longer detecting and avoiding a backlog of undetected frames.

## Demo video
[Demo Video](https://github.com/DILPREET1910/intelligent-autozoom/assets/81746463/ce03f9b5-5d8a-4544-887d-2f081d100039)

## Aknowledgements
- Thanks to [ccextractor](https://github.com/CCExtractor) for the idea
- [Flutter-Tflite](https://pub.dev/packages/flutter_tflite) for object detection on live camera feed
