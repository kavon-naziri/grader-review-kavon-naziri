CPATH='.;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar'
CPATH2='.;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

set -e
if [[ -f student-submission/ListExamples.java ]]
then
    echo "File found"
    cp -r student-submission grading-area
    cp TestListExamples.java grading-area/student-submission
    javac -cp $CPATH grading-area/student-submission/*.java
    java -cp $CPATH2 grading-area/student-submission/TestListExamples
else
    echo "ListExamples.java file not found"
    exit
fi


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
