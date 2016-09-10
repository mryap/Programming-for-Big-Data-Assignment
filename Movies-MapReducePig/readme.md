#Intro
Hadoop is largely written in Java and Java is the language of MapReduce.  However, Java is not always the quickest or most natural way to execute data manipulations.  As a result, the ecosystem has evolved to support a wide variety of APIs and secondary languages. Pig are one of these languages for interacting with data stored HDFS.  

# Why Pig?
Pig allows you to run MapReduce jobs without using Java. According to Yahoo! Research, using Pig Latin takes just 5 minutes to write 9 lines of code to do the following while using Java, it 4 hours and 170 lines of code.  (Gates and Yahoo! Research, 2010) 
Pigs do can fly!

<p align="center">
  <img src="https://raw.githubusercontent.com/mryap/Programming-for-Big-Data-Assignment/master/media/MapReducePig.png">
</p>

# Data Processing using MapReduce Pig
A typical Pig Latin programs are generally organized as follows:
- A LOAD statement reads data from HDFS
- A series of statements aggregates and manipulates data
- A STORE statement writes output to the filesystem
- Alternatively, a DUMP statement displays the output to the terminal

The analysis is based on the blogpost by Menon’s Apache Pig Tutorial – Part 1 and Part 2. (Menon, 2013) 

# Dataset
The dataset is from Menon’s now defunct project called Flicksery. Flicksery is a Netflix Search Engine. The dataset is a simple text (movies_data.csv) file lists movie names and its details like release year, rating and runtime. It is available at his github account. (https://github.com/rohitsden/pig-tutorial/blob/master/movies_data.csv)

# MapReduce environment Configuration details
There are various options to run the MapReduce jobs 
- running locally
- in the cloud
- on own cluster. 

For the purpose of this assignment, running the MapReduce jobs locally and in the cloud is the only viable option. AWS Amazon EMR platform is used since it does not require download and installation i.e. my laptop to a local machine.  

Amazon EMR is a web service that utilizes a hosted Hadoop framework running on the web-scale infrastructure of Amazon Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage Service (Amazon S3). It includes HDFS (with S3 support), HBase (proprietary backup recovery), MapReduce, Hive (added support for Dynamo), Pig, and Zookeeper. (Lublinsky, Smith, and Yakubovich, 2013)
IBM bluemix, a cloud platform to run MapReduce without Java is another suggested alternative.  

Fortunately, HUE, an open-source user interface for Hadoop is available. HUE is called the user interface of Hadoop.  It makes interacting with Amazon EMR cluster easier.  

With Hue, I successfully run and develop Pig queries, manage files in HDFS and tables all via the ubiquitous browser window.  With the help of Amazon documentation, I able to connect Amazon EMR to HUE.  Importantly, I able to follow thru some tutorial to run MapReduce jobs without using Java 

The downside of using AWS Amazon EMR platform is for some reason, connection to AWS via SSH can drop since I am using HUE. Also, the anxiety of not knowing exactly how much cost are involved (Amazon elastic MapReduce (EMR) | pricing, 2010).  
