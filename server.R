options(shiny.sanitize.errors = F) 
source("./global.R")

## ShinyApp for data Oomen&Rodriguez-Terrones et al. Expression of genes and TEs throughout Mammalian Preimplantation Development

server<-function(input,output,session){
  observe({
    updateSelectizeInput(session=session, 'species', choices =  c(Choose = '', species_vector), server = TRUE, selected="Mouse")
  })
  
  observe({
    updateSelectizeInput(session=session, 'species2', choices =  c(Choose = '', species_vector), server = TRUE, selected="Pig")
  })
  
  observe({
    updateSelectizeInput(session=session, 'species3', choices =  c(Choose = '', species_vector), server = TRUE, selected="Cow")
  })
  
  observe({
    updateSelectizeInput(session=session, 'species4', choices =  c(Choose = '', species_vector), server = TRUE, selected="Rabbit")
  })
  
  observe({
    updateSelectizeInput(session=session, 'species5', choices =  c(Choose = '', species_vector), server = TRUE, selected="Rhesus")
  })
  
  observe({
    if (input$species=="Mouse"){updateSelectizeInput(session=session, 'var', choices =  c(Choose = '', gene.names_mouse), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
      if (input$species=="Pig"){updateSelectizeInput(session=session, 'var', choices =  c(Choose = '', gene.names_pig), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
        if (input$species=="Cow"){updateSelectizeInput(session=session, 'var', choices =  c(Choose = '', gene.names_cow), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
          if (input$species=="Rabbit"){updateSelectizeInput(session=session, 'var', choices =  c(Choose = '', gene.names_rabbit), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
            if (input$species=="Rhesus"){updateSelectizeInput(session=session, 'var', choices =  c(Choose = '', gene.names_rhesus), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")}}}}}})
  
  observe({
    if (input$species2=="Mouse"){updateSelectizeInput(session=session, 'var2', choices =  c(Choose = '', gene.names_mouse), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
      if (input$species2=="Pig"){updateSelectizeInput(session=session, 'var2', choices =  c(Choose = '', gene.names_pig), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
        if (input$species2=="Cow"){updateSelectizeInput(session=session, 'var2', choices =  c(Choose = '', gene.names_cow), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
          if (input$species2=="Rabbit"){updateSelectizeInput(session=session, 'var2', choices =  c(Choose = '', gene.names_rabbit), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
            if (input$species2=="Rhesus"){updateSelectizeInput(session=session, 'var2', choices =  c(Choose = '', gene.names_rhesus), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")}}}}}})
  
  observe({
    if (input$species3=="Mouse"){updateSelectizeInput(session=session, 'var3', choices =  c(Choose = '', gene.names_mouse), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
      if (input$species3=="Pig"){updateSelectizeInput(session=session, 'var3', choices =  c(Choose = '', gene.names_pig), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
        if (input$species3=="Cow"){updateSelectizeInput(session=session, 'var3', choices =  c(Choose = '', gene.names_cow), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
          if (input$species3=="Rabbit"){updateSelectizeInput(session=session, 'var3', choices =  c(Choose = '', gene.names_rabbit), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
            if (input$species3=="Rhesus"){updateSelectizeInput(session=session, 'var3', choices =  c(Choose = '', gene.names_rhesus), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")}}}}}})
  
  observe({
    if (input$species4=="Mouse"){updateSelectizeInput(session=session, 'var4', choices =  c(Choose = '', gene.names_mouse), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
      if (input$species4=="Pig"){updateSelectizeInput(session=session, 'var4', choices =  c(Choose = '', gene.names_pig), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
        if (input$species4=="Cow"){updateSelectizeInput(session=session, 'var4', choices =  c(Choose = '', gene.names_cow), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
          if (input$species4=="Rabbit"){updateSelectizeInput(session=session, 'var4', choices =  c(Choose = '', gene.names_rabbit), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
            if (input$species4=="Rhesus"){updateSelectizeInput(session=session, 'var4', choices =  c(Choose = '', gene.names_rhesus), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")}}}}}})
  
  observe({
    if (input$species5=="Mouse"){updateSelectizeInput(session=session, 'var5', choices =  c(Choose = '', gene.names_mouse), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
      if (input$species5=="Pig"){updateSelectizeInput(session=session, 'var5', choices =  c(Choose = '', gene.names_pig), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
        if (input$species5=="Cow"){updateSelectizeInput(session=session, 'var5', choices =  c(Choose = '', gene.names_cow), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
          if (input$species5=="Rabbit"){updateSelectizeInput(session=session, 'var5', choices =  c(Choose = '', gene.names_rabbit), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")} else {
            if (input$species5=="Rhesus"){updateSelectizeInput(session=session, 'var5', choices =  c(Choose = '', gene.names_rhesus), server = TRUE,selected="MLT1A0:ERVL-MaLR:LTR")}}}}}})
  
  output$expression_species = renderPlot({
    if(input$species=="Mouse"){Plot_genes(input$var,cluster_mouse,mouse_norm,input$var,input$species)} else { 
      if(input$species=="Pig"){Plot_genes(input$var,cluster_pig,pig_norm,input$var,input$species)} else {
        if (input$species=="Cow"){Plot_genes(input$var,cluster_cow,cow_norm,input$var,input$species)} else {
          if (input$species=="Rabbit"){Plot_genes(input$var,cluster_rabbit,rabbit_norm,input$var,input$species)} else {
            if (input$species=="Rhesus"){Plot_genes(input$var,cluster_rhesus, rhesus_norm,input$var,input$species)}}}}}})
  
  output$expression_species2 = renderPlot({
    if(input$species2=="Mouse"){Plot_genes(input$var2,cluster_mouse,mouse_norm,input$var2,input$species2)} else { 
      if(input$species2=="Pig"){Plot_genes(input$var2,cluster_pig,pig_norm,input$var2,input$species2)} else {
        if (input$species2=="Cow"){Plot_genes(input$var2,cluster_cow,cow_norm,input$var2,input$species2)} else {
          if (input$species2=="Rabbit"){Plot_genes(input$var2,cluster_rabbit,rabbit_norm,input$var2,input$species2)} else {
            if (input$species2=="Rhesus"){Plot_genes(input$var2,cluster_rhesus, rhesus_norm,input$var2,input$species2)}}}}}})
  
  output$expression_species3 = renderPlot({
    if(input$species3=="Mouse"){Plot_genes(input$var3,cluster_mouse,mouse_norm,input$var3,input$species3)} else { 
      if(input$species3=="Pig"){Plot_genes(input$var3,cluster_pig,pig_norm,input$var3,input$species3)} else {
        if (input$species3=="Cow"){Plot_genes(input$var3,cluster_cow,cow_norm,input$var3,input$species3)} else {
          if (input$species3=="Rabbit"){Plot_genes(input$var3,cluster_rabbit,rabbit_norm,input$var3,input$species3)} else {
            if (input$species3=="Rhesus"){Plot_genes(input$var3,cluster_rhesus, rhesus_norm,input$var3,input$species3)}}}}}})
  
  output$expression_species4 = renderPlot({
    if(input$species4=="Mouse"){Plot_genes(input$var4,cluster_mouse,mouse_norm,input$var4,input$species4)} else { 
      if(input$species4=="Pig"){Plot_genes(input$var4,cluster_pig,pig_norm,input$var4,input$species4)} else {
        if (input$species4=="Cow"){Plot_genes(input$var4,cluster_cow,cow_norm,input$var4,input$species4)} else {
          if (input$species4=="Rabbit"){Plot_genes(input$var4,cluster_rabbit,rabbit_norm,input$var4,input$species4)} else {
            if (input$species4=="Rhesus"){Plot_genes(input$var4,cluster_rhesus, rhesus_norm,input$var4,input$species4)}}}}}})
  
  output$expression_species5 = renderPlot({
    if(input$species5=="Mouse"){Plot_genes(input$var5,cluster_mouse,mouse_norm,input$var5,input$species5)} else { 
      if(input$species5=="Pig"){Plot_genes(input$var5,cluster_pig,pig_norm,input$var5,input$species5)} else {
        if (input$species5=="Cow"){Plot_genes(input$var5,cluster_cow,cow_norm,input$var5,input$species5)} else {
          if (input$species5=="Rabbit"){Plot_genes(input$var5,cluster_rabbit,rabbit_norm,input$var5,input$species5)} else {
            if (input$species5=="Rhesus"){Plot_genes(input$var5,cluster_rhesus, rhesus_norm,input$var5,input$species5)}}}}}})
  

  output$downloadPlot <- downloadHandler(
    filename = function() {paste(input$species, "_", input$var, ".pdf", sep = "")},
    content = function(file){ggsave(file, if(input$species=="Mouse"){Plot_genes(input$var,cluster_mouse,mouse_norm,input$var,input$species)} else { 
      if(input$species=="Pig"){Plot_genes(input$var,cluster_pig,pig_norm,input$var,input$species)} else {
        if (input$species=="Cow"){Plot_genes(input$var,cluster_cow,cow_norm,input$var,input$species)} else {
          if (input$species=="Rabbit"){Plot_genes(input$var,cluster_rabbit,rabbit_norm,input$var,input$species)} else {
            if (input$species=="Rhesus"){Plot_genes(input$var,cluster_rhesus, rhesus_norm,input$var,input$species)}}}}})})
  
  output$downloadPlot2 <- downloadHandler(
    filename = function() {paste(input$species2, "_", input$var2, ".pdf", sep = "")},
    content = function(file){ggsave(file, if(input$species2=="Mouse"){Plot_genes(input$var2,cluster_mouse,mouse_norm,input$var2,input$species2)} else { 
      if(input$species2=="Pig"){Plot_genes(input$var2,cluster_pig,pig_norm,input$var2,input$species2)} else {
        if (input$species2=="Cow"){Plot_genes(input$var2,cluster_cow,cow_norm,input$var2,input$species2)} else {
          if (input$species2=="Rabbit"){Plot_genes(input$var2,cluster_rabbit,rabbit_norm,input$var2,input$species2)} else {
            if (input$species2=="Rhesus"){Plot_genes(input$var2,cluster_rhesus, rhesus_norm,input$var2,input$species2)}}}}})})
  
  output$downloadPlot3 <- downloadHandler(
    filename = function() {paste(input$species3, "_", input$var3, ".pdf", sep = "")},
    content = function(file){ggsave(file, if(input$species3=="Mouse"){Plot_genes(input$var3,cluster_mouse,mouse_norm,input$var3,input$species3)} else { 
      if(input$species3=="Pig"){Plot_genes(input$var3,cluster_pig,pig_norm,input$var3,input$species3)} else {
        if (input$species3=="Cow"){Plot_genes(input$var3,cluster_cow,cow_norm,input$var3,input$species3)} else {
          if (input$species3=="Rabbit"){Plot_genes(input$var3,cluster_rabbit,rabbit_norm,input$var3,input$species3)} else {
            if (input$species3=="Rhesus"){Plot_genes(input$var3,cluster_rhesus, rhesus_norm,input$var3,input$species3)}}}}})})
  
  output$downloadPlot4 <- downloadHandler(
    filename = function() {paste(input$species4, "_", input$var4, ".pdf", sep = "")},
    content = function(file){ggsave(file, if(input$species4=="Mouse"){Plot_genes(input$var4,cluster_mouse,mouse_norm,input$var4,input$species4)} else { 
      if(input$species4=="Pig"){Plot_genes(input$var4,cluster_pig,pig_norm,input$var4,input$species4)} else {
        if (input$species4=="Cow"){Plot_genes(input$var4,cluster_cow,cow_norm,input$var4,input$species4)} else {
          if (input$species4=="Rabbit"){Plot_genes(input$var4,cluster_rabbit,rabbit_norm,input$var4,input$species4)} else {
            if (input$species4=="Rhesus"){Plot_genes(input$var4,cluster_rhesus, rhesus_norm,input$var4,input$species4)}}}}})})
  
  output$downloadPlot5 <- downloadHandler(
    filename = function() {paste(input$species5, "_", input$var5, ".pdf", sep = "")},
    content = function(file){ggsave(file, if(input$species5=="Mouse"){Plot_genes(input$var5,cluster_mouse,mouse_norm,input$var5,input$species5)} else { 
      if(input$species5=="Pig"){Plot_genes(input$var5,cluster_pig,pig_norm,input$var5,input$species5)} else {
        if (input$species5=="Cow"){Plot_genes(input$var5,cluster_cow,cow_norm,input$var5,input$species)} else {
          if (input$species5=="Rabbit"){Plot_genes(input$var5,cluster_rabbit,rabbit_norm,input$var5,input$species5)} else {
            if (input$species5=="Rhesus"){Plot_genes(input$var5,cluster_rhesus, rhesus_norm,input$var5,input$species5)}}}}})})
  
  
  output$downloadData_mouse = downloadHandler(
    filename = function(){"Mouse_norm_rpm.csv"},
    content = function(file){write.csv(mouse_norm, file, row.names = TRUE)}
  )
  
  output$downloadData_pig = downloadHandler(
    filename = function(){"Pig_norm_rpm.csv"},
    content = function(file) {write.csv(pig_norm, file, row.names = TRUE)}
  )
  
  output$downloadData_cow = downloadHandler(
    filename = function(){"Cow_norm_rpm.csv"},
    content = function(file) {write.csv(cow_norm, file, row.names = TRUE)}
  )
  
  output$downloadData_rabbit = downloadHandler(
    filename = function(){"Rabbit_norm_rpm.csv"},
    content = function(file) {write.csv(rabbit_norm, file, row.names = TRUE)}
  )
  
  output$downloadData_rhesus = downloadHandler(
    filename = function(){"Rhesus_norm_rpm.csv"},
    content = function(file) {write.csv(rhesus_norm, file, row.names = TRUE)}
  )
    


}
      



