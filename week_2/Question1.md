{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;\f1\fnil\fcharset0 Consolas;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red245\green245\blue245;}
\margl1440\margr1440\vieww10800\viewh9000\viewkind0
\deftab720
\pard\pardeftab720\sl500\sa320

\f0\b\fs36 \cf2 \expnd0\expndtw0\kerning0
Inheritance and the super keyword\
\pard\pardeftab720\sl512\sa320

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
The concept of inheritence is fairly simple and exists in many different coding languages, including HTML and CSS. In Objective-C, "inheritence" refers to the behavior of classes and their ability to inherit methods and instance variables from their mother class. Another word for the class they inherit from is "super". Subclasses inherit from their "super" class.\
NSObject is considered a "master" class. Any object or class we create inherits from the NSObject class. Its filled with methods that we're able to use like NSString, NSArray, etc. Whenever we call those methods, the compiler first checks the subclass for the method, then goes up to the master class to find the method.\
Say we create a "person" class, then create a "students" subclass that inherits from the person "super" class (because students are people). The person class has a method called "weight" that logs "This person weights x lbs" with x being the persons weight. Lets say the "students" subclass also has a weight class, but students are exactly half the weight of adults. We would create a method called "studentWeight" and, instead of rewriting code, pull the weight method from the "person" super class and simply devide it by 2.\
The keyword that we would use to refer to the weight method in the super class would simply be the keyword "super". So code, this would look like.\
\pard\pardeftab720\sl380

\f1\fs28 \cf2 \cb3 \expnd0\expndtw0\kerning0
// student.m\
\
- (float) studentWeight \{\
\
return [super weight]/2;\
\
\}\
\
\pard\pardeftab720\sl512

\f0\fs32 \cf2 \cb1 \expnd0\expndtw0\kerning0
Once you get the hang of it, the concept of inheritence and the "super" keyword is very easy and straightforward!\
}