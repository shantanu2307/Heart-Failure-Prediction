Objective: 

Build Stage

We created an SVM model on the heart-disease-prediction dataset available on Kaggle. To create a web application for deployment, we created a flask application and used the SVM model to predict. To make sure that everyone can replicate this environment, we created a Dockerfile which specifies all the dependencies. This makes our development stage device 
independent

Test Stage

To test the correctness of the application, we wrote unit tests and tested out our pages using Pytest. All the tests passed clearly indicating that the application was working as expected.

Deployment Stage

Now in a typical company, there are around 100-200 people working on the same project. Hence it becomes difficult for a person to manage everything. Hence there is a need to automate the entire procedure. We created a Ci/CD pipeline using CircleCI which helps us automate our build and test task. If the test task is successful , it helps us to deploy our code in the development application which can later be merged into the production application. We used Heroku for deployment.

Tools, Libraries, Technology: sklearn, flask, pytest, numpy, pandas, circleci, docker, heroku

Accuracy of the model :75%


### Commands
    -> git pull
    -> git add .
    -> git commit -m "Message"
    -> git push



Made by: Shantanu Goyal (2019UCS2026), Sujal Goel (2019UCS2014), Anureet Kaur (2019UCS2037)


    
