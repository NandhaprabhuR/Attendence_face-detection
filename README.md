# 🎓 Attendance Face Detection App



This is a mobile application built using **Flutter** and **Firebase** to streamline student attendance using **face recognition**. The app supports **two user roles**: `Teacher` and `Student`.



## 📱 App Overview

### 👩‍🏫 Teachers
- Login to the app and open the attendance feature.
- Use the **mobile camera** to capture student faces.
- The captured image is sent to a **FastAPI** backend for face recognition.
- The attendance status is recorded based on face verification results.

### 👨‍🎓 Students
- Login to verify whether their attendance has been marked.
- Get notified of their attendance status.
- Can see the attendance log for personal verification.



## 🛠️ Tech Stack

| Component        | Technology     |
|------------------|----------------|
| Frontend         | Flutter (Dart) |
| Backend API      | FastAPI (Python) |
| Authentication   | Firebase Auth |
| Database         | Firebase Firestore |
| Face Detection   | OpenCV / ML Model |
| Deployment       | Firebase + Uvicorn |



## 📂 Project Structure

📁 android/
📁 lib/
📁 web/
📁 windows/
📄 train.py # Face detection model training
📄 main.py # FastAPI app entry
📄 pubspec.yaml # Flutter dependencies
📄 README.md


🔁 Workflow
Teacher logs in → captures student photo.

Image sent to FastAPI → processed by ML model.

Attendance result returned → stored in Firebase.

Student logs in → checks attendance record.



📸 Face Detection Model
Trained using real classroom images.

Accepts single-shot face input from camera.

Supports verification without retraining per student.
