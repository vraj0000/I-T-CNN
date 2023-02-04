# Image to Text Conversion using Convolution Neural Network

The directry structure is as follows :

I-T-CNN\
|\
-> Dataset\
|  |\
|  -> Dataset.docx (The links to dataset used in this project)\
|\
-> Network\
|  |\
|  -> Cam DL (Contains Axiom network that classifies Trucks, Cars, Plans, and Ships.)\
|  |\
|  -> OCR DL (Contains OCR network that classifies numbers and charecturs. Also the asociate programs to split the plat.)\
|\
-> Program (Contains programs to train and use the Axiom and OCR network in ".m" format.)\
|  |\
|  -> Axiom.m (Traning code of Axiom.)\
|  |\
|  -> Chater sperater.m (Code to sperate the chrecture from image).\
|  |\
|  -> image inverter.m (To invert the image.)\
|  |\
|  -> ocrv3.m (Traning OCR V3.)\
|  |\
|  -> Plate.m\
|\
-> Report\
|  |\
|  -> axion.pdf (Architecture of Axiom.)\
|  |\
|  -> ocr v3.pdf (Architecture of OCR V3.)\
|  |\
|  -> report final.pdf (Contains the complet report of the project.)\
|\
-> Software \
   |\
   -> Matlab R2017b.docx (Contains the docx file listing the software used.)\
 ```  
├── Dataset
│   └── Dataset.docx
├── Network
│   ├── Cam DL
│   │   └── Axiom.mat
│   └── OCR DL
│       ├── camera_plate.m
│       ├── chater_seprater.m
│       ├── invert_sp_ch.m
│       ├── ocrv2.mat
│       ├── ocrv3.mat
│       ├── plate.m
│       ├── plate.psd
│       ├── t1.png
│       ├── t2.png
│       ├── t3.png
│       ├── t4.png
│       ├── t5.png
│       ├── t6.png
│       ├── t9.PNG
│       ├── untitled.fig
│       └── Untitled.m
├── Program
│   ├── Axiom.m
│   ├── Chater sperater.m
│   ├── image inverter.m
│   ├── ocrv3.m
│   └── Plate.m
├── Report
│   ├── axion.pdf
│   ├── ocvr v3.pdf
│   └── report final.pdf
└── Software
    └── Matlab R2017b.docx
```
