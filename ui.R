library(shiny)
shinyUI(fluidPage(
  titlePanel("How Motivated Are You?"),
 
  h4("A Short Quiz Looking At Your Motivation Toward Completing Your JHBSPH - Data Science Certification"),
  HTML("<hr style='height:3px;background-color:#337AB7;'>"),
  
  navlistPanel(
    "APP INFORMATION",
    tabPanel("INTRODUCTION",
             br(),
             br(),
             br(),
             p("This application lets you answer a few questions related to the Data Science Certification and stores your answers in '.txt' logfiles in 6 seperate '.txt' documents, one for each question. I also tried to add a few elements of design. The Download Data section is not in function, but I am working on it. Finally, you will receive tailored feedbacks for the first two questions, depending on the answer you have chosen.")),
    
    tabPanel("LICENSE",
             h6("Copyright (c) <2015> <Michel Moreau>"),
             h6(""),
             h6("Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the Software), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software."),
             h6(""),
             h6("THE SOFTWARE IS PROVIDED -AS IS-, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."))),

  sidebarPanel(
    selectInput("radio", label = h4("1 -- How important is it for you to complete the Data Science Certification?"),
                choices = list("Choose your answer" = 0, "1 - Absolutely not important" = 1, "2" = 2, "3" = 3, "4" = 4, "5 - Somewhat important" = 5
                               , "6" = 6, "7" = 7, "8" = 8, "9" = 9, "10 - 100% important" = 10), 
                selected = 0),
    
    
    selectInput("radio2", label = h4("2 -- How confident are you toward completing the Data Science Certification?"),
                choices = list("Choose your answer" = 0, "1 - Absolutely not confident" = 1, "2" = 2, "3" = 3, "4" = 4, "5 - Somewhat confident" = 5
                               , "6" = 6, "7" = 7, "8" = 8, "9" = 9, "10 - 100% confident" = 10), 
                selected = 0),
    textInput("text", label = h4("3 -- What are your ultimate goal(s) in life?"), value = NULL),
    
    textInput("text2", label = h4("4 -- How completing your Data Science Certification will help you get closer to your life goal(s)?"), value = NULL),
    HTML("<hr style='height:3px;background-color:#337AB7;'>"),
    HTML("<hr style='height:3px;background-color:#337AB7;'>"),
    
    selectInput("likely", label = HTML("<h4 style='color:#fb0a2a;'>Extra Question -- How likely is it that you would recommend the Data Science Certification to a friend or colleague?</h4>"),
                choices = list("Choose your answer" = 0, "1 - Absolutely Unlikely" = 1, "2" = 2, "3" = 3, "4" = 4, "5 - Somewhat important" = 5
                               , "6" = 6, "7" = 7, "8" = 8, "9" = 9, "10 - Absolutely Likely" = 10), 
                selected = 0),
    textInput("textfinal", label = HTML("<h4 style='color:#fb0a2a;'>You Can Add Comments About The DataScience Certification Or This App Here"), value = NULL),
    submitButton("submit", icon("check")),
    hr(),
    h3("Download Data"),
    downloadLink('downloadData1', 'Q1'),
    downloadLink('downloadData2', 'Q2'),
    downloadLink('downloadData3', 'Q3'),
    downloadLink('downloadData4', 'Q4'),
    downloadLink('downloadData5', 'Q5'),
    downloadLink('downloadData6', 'Q6')),
  mainPanel(
    h4("Your Answer To The First Question"),
    verbatimTextOutput("oradio"),
    h4("Your Answer To The Second Question"),
    verbatimTextOutput("oradio2"),
    h4("Your Answer To The Third Question"),
    verbatimTextOutput("otext"),
    h4("Your Answer To The Fourth Question"),
    verbatimTextOutput("otext2"),
    HTML("<hr style='height:1px;background-color:#337AB7;'>"),
    
    
    
    verbatimTextOutput("otext3"),
    HTML("<hr style='height:1px;background-color:#337AB7;'>"),
    HTML("<center><img src='http://cloudfront-assets.reason.com/assets/mc/_external/2012_10/coursera.jpg'></center>"),
    HTML("<hr style='height:1px;background-color:#337AB7;'>"),
    h2(a("Feeling Higly Motivated? Click Here To Know More About Other Certifications And Courses Available At Coursera - Universal Access To The World's Best Education", href="https://www.coursera.org/specializations?utm_medium=topnav")))
))