# MATLAB Video Object Labeling Project

This project uses MATLAB's **Video Labeler App** and **Computer Vision Toolbox** to semi-automate the segmentation and labeling of objects in traffic videos. The labeled dataset can be used to train deep learning models for self-driving applications.

## Project Objective
To reduce the manual labor of labeling cars in videos by applying automation (via the KLT Point Tracker). This supports the development of AI systems for autonomous vehicles.

## Files Included

| File | Description |
|------|-------------|
| `gTruth.mat` | Ground truth object with bounding box annotations |
| `run_pipeline.m` | Script to visualize annotated video frames |
| `README.md` | This documentation |
| `LICENSE` | BSD 2-Clause License |
| `labels/VideoLabelingProject/` | Session files from MATLAB's Video Labeler App |

## Requirements
- MATLAB R2023b or newer
- Computer Vision Toolbox
- Deep Learning Toolbox (optional for extensions)

## How to Run

1. Open MATLAB
2. Set the current folder to the project directory
3. Run the visualization script:
   ```matlab
   run_pipeline