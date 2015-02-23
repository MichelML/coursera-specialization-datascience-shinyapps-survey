library(shiny)

shinyServer(function(input, output, session) {

  output$oradio <-renderPrint({ 
    if (input$radio == 0) {
      paste("Please Answer Question 1 And Click Submit.")
    } else if (input$radio == 1) {
      paste("*1 - Absolutely Not Important*. Your score is pretty low.", "What would it take to make this certification more important to you?")
    }  else if (input$radio == 2) {
      paste("*2*. Your score is pretty low.", "What would it take to make this certification a bit more important for you?")
    }  else if (input$radio == 3) {
      paste("*3*. Your score is pretty low.", "What would it take to make this certification a bit more important for you?")
    }  else if (input$radio == 4) {
      paste("*4*. It seems like you are unsure whether this certification is important for you. But it sure can help you acquire useful skills.", "What would it take to make this certification a bit more important for you?")
    }  else if (input$radio == 5) {
      paste("*5 - somewhat important*. It seems like you are unsure whether this certification is important for you. But it sure can help you acquire useful skills.", "What would it take to make this certification a bit more important for you?")
    }  else if (input$radio == 6) {
      paste("*6*. It is a descent score. This certification sure can help you acquire useful skills.", "What would it take to make this certification even more important for you?")
    }  else if (input$radio == 7) {
      paste("*7*. It is a descent score. This certification sure can help you acquire useful skills.", "What would it take to make this certification even more important for you?")
    }  else if (input$radio == 8) {
      paste("*8*. It is a pretty high score. This certification sure can help you acquire useful skills.", "What would it take to make this certification even more important for you?")
    }  else if (input$radio == 9) {
      paste("*9*. It is a pretty high score. This certification sure can help you acquire useful skills.", "What would it take to make this certification even more important for you?")
    }  else if (input$radio == 10) {
      paste("*10 - 100% important*. It is the highest score. That is excellent. This certification sure can help you acquire useful skills. Great job!")
    } 
  })
  output$oradio2 <- renderPrint({ 
    if (input$radio2 == 0) {
      paste("Please Answer Question 2 And Click Submit.")
    } else if (input$radio2 == 1) {
      paste("*1 - Absolutely Not Confident*. Your score is pretty low.", "What would make you more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 2) {
      paste("*2*. Your score is pretty low.", "What would make you more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 3) {
      paste("*3*. Your score is pretty low.", "What would make you more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 4) {
      paste("*4*. It seems like you are close to feel confident toward completing your certification.", "What would make you even more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 5) {
      paste("*5 - Somehow Confident*. It seems like you are close to feel confident toward completing your certification.", "What would make you even more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 6) {
      paste("*6*. You seem a bit confident toward completing your certification.", "What would make you even more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 7) {
      paste("*7*. You seem a bit confident toward completing your certification.", "What would make you even more confident to complete your certification? It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 8) {
      paste("*8*. It is a pretty high score. You sure are confident toward completing your certification. It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio == 9) {
      paste("*9*. It is a pretty high score. You sure are confident toward completing your certification. It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    }  else if (input$radio2 == 10) {
      paste("*10 - 100% important*. It is the highest score. You sure are confident toward completing your certification. It sure can be hard sometimes, but we encourage you not to give up on the skills you can acquire through this certification. Plus, the feeling of accomplishment is an awesome feeling to have at the end of the journey.")
    } 
  })
  output$otext <- renderPrint({ 
    if (input$text == "") {
      paste("Please Answer Question 3 And Click Submit.")
    } else {
      (input$text)}
  })
  output$otext2 <- renderPrint({ 
    if (input$text == "") {
      paste("Please Answer Question 4 And Click Submit.")
    } else {
      (input$text2)}
  })
  output$otext3 <- renderPrint({ 
    if (input$text == "" | input$text2 == "" | input$radio == 0 | input$radio2 == 0) {
      paste("Please Answer All Questions Of This Quiz So We Can Know Better About Our Students!")
    } else {
      ("Thank You For Participating! We Hope This Exercice Motivated You! You Must Now Have A Clearer Idea On Why You Will Complete This Certification. Well Done! Keep Going, Work Hard, With Others, And Never Give Up!")}
  })
  logfileq1 <- paste0('logfileq1',
                        '.txt')
  logfileq2 <- paste0('logfileq2',
                      '.txt')
  logfileq3 <- paste0('logfileq3',
                      '.txt')
  logfileq4 <- paste0('logfileq4',
                      '.txt')
  logfileq5 <- paste0('logfileq5',
                      '.txt')
  logfileq6 <- paste0('logfileq6',
                      '.txt')
  
  
  # These observer add an entry to the log file every time
  # input$n changes.
  obs <- observe({
    if (input$radio >=1){
    cat(input$radio, '\n', file = logfileq1, append = TRUE)}
  })
  obs2 <- observe({
    if (input$radio2 >=1){
      cat(input$radio2, '\n', file = logfileq2, append = TRUE)}
  })
  obs3 <- observe({
    cat(input$text, '\n', file = logfileq3, append = TRUE)
  })
  obs4 <- observe({
    cat(input$text2, '\n', file = logfileq4, append = TRUE)
  })
  obs5 <- observe({
    if (input$likely >=1){
    cat(input$likely, '\n', file = logfileq5, append = TRUE)}
  })
  obs6 <- observe({
    cat(input$textfinal, '\n', file = logfileq6, append = TRUE)
  })
  # When the client ends the session, suspend the observer.
  # Otherwise, the observer could keep running after the client
  # ends the session.
  output$downloadData1 <- downloadHandler(
    filename = function() {
        paste('data-', Sys.Date(), '.txt', sep='')
       },
       content = function() {
         write.table(data, file)
       }
     )
  output$downloadData2 <- downloadHandler(
    filename = function() {
      paste('data-', Sys.Date(), '.txt', sep='')
    },
    content = function(file) {
      write.table(data, file)
    }
  )
  output$downloadData3 <- downloadHandler(
    filename = function() {
      paste('data-', Sys.Date(), '.txt', sep='')
    },
    content = function(file) {
      write.table(data, file)
    }
  )
  output$downloadData4 <- downloadHandler(
    filename = function() {
      paste('data-', Sys.Date(), '.txt', sep='')
    },
    content = function(file) {
      write.table(data, file)
    }
  )
  output$downloadData5 <- downloadHandler(
    filename = function() {
      paste('data-', Sys.Date(), '.txt', sep='')
    },
    content = function(file) {
      write.table(data, file)
    }
  )
  output$downloadData6 <- downloadHandler(
    filename = function() {
      paste('data-', Sys.Date(), '.txt', sep='')
    },
    content = function(file) {
      write.table(data, file)
    }
  )
     
  session$onSessionEnded(function() {
    obs$suspend()
    obs2$suspend()
    obs3$suspend()
    obs4$suspend()
    obs5$suspend()
    obs6$suspend()
  })
})