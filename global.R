library(ggplot2)
library(plotly)
library(data.table)
library(shiny)
library(shinyauthr)
library(bslib)

## ShinyApp for data Oomen&Rodriguez-Terrones et al. Expression of genes and TEs throughout Mammalian Preimplantation Development

base <- 'Data/'
species_vector = c("Mouse","Pig","Cow","Rabbit","Rhesus")

### LOAD data ###

#Mouse
load(paste0(base,'Mouse_rpm_5prime_geneIDs.Rda'))

mouse_norm = rpm_5p
cluster_mouse =  rep(0,length(colnames(mouse_norm)))
for ( i in 1:length(colnames(mouse_norm))){
  cluster_mouse[i] = unlist(strsplit(colnames(mouse_norm)[i],"_"))[[1]][1]
}

stage_mouse = c("Oocyte", "Zygote", "Early-2-cell", "Late-2-cell", "4-cell", "8-cell", "16-cell")
cluster_mouse = factor(cluster_mouse,levels = stage_mouse)
gene.names_mouse = row.names(mouse_norm)

#Pig
load(paste0(base,'Pig_rpm_5prime_geneIDs.Rda'))

pig_norm = rpm_5p
cluster_pig =  rep(0,length(colnames(pig_norm)))
for ( i in 1:length(colnames(pig_norm))){
  cluster_pig[i] = unlist(strsplit(colnames(pig_norm)[i],"_"))[[1]][1]
}

stage_pig = c("Oocyte", "Zygote", "2-cell", "4-cell", "8-cell", "16-cell","Morula")
cluster_pig = factor(cluster_pig,levels = stage_pig)
gene.names_pig = row.names(pig_norm)

#Cow
load(paste0(base,'Cow_rpm_5prime_geneIDs.Rda'))

cow_norm = rpm_5p
cluster_cow =  rep(0,length(colnames(cow_norm)))
for ( i in 1:length(colnames(cow_norm))){
  cluster_cow[i] = unlist(strsplit(colnames(cow_norm)[i],"_"))[[1]][1]
}

stage_cow = c("Oocyte", "Zygote", "2-cell", "4-cell", "8-cell", "16-cell","Morula")
cluster_cow = factor(cluster_cow,levels = stage_cow)
gene.names_cow = row.names(cow_norm)

#Rabbit
load(paste0(base,'Rabbit_rpm_5prime_geneIDs.Rda'))

rabbit_norm = rpm_5p
cluster_rabbit =  rep(0,length(colnames(rabbit_norm)))
for ( i in 1:length(colnames(rabbit_norm))){
  cluster_rabbit[i] = unlist(strsplit(colnames(rabbit_norm)[i],"_"))[[1]][1]
}

stage_rabbit = c("Oocyte", "Zygote", "2-cell", "4-cell", "8-cell", "16-cell","Morula")
cluster_rabbit = factor(cluster_rabbit,levels = stage_rabbit)
gene.names_rabbit = row.names(rabbit_norm)

#Rhesus
load(paste0(base,'Rhesus_rpm_5prime_geneIDs.Rda'))

rhesus_norm = rpm_5p
cluster_rhesus=  rep(0,length(colnames(rhesus_norm)))
for ( i in 1:length(colnames(rhesus_norm))){
  cluster_rhesus[i] = unlist(strsplit(colnames(rhesus_norm)[i],"_"))[[1]][1]
}

stage_rhesus = c("Oocyte", "Zygote", "2-cell", "4-cell", "8-cell", "16-cell")
cluster_rhesus = factor(cluster_rhesus,levels = stage_rhesus)
gene.names_rhesus = row.names(rhesus_norm)



Plot_genes = function(gene,cluster,norm_counts,gene_name,species){
  
  
  if (species=="Mouse"){
    gene_expr=norm_counts[gene,]
    Stage=as.factor(cluster)
    
    data_plot=data.frame(as.numeric(gene_expr),Stage)
    
    plot_gene=ggplot(data_plot, aes(x=Stage, y=gene_expr))+
      geom_point(color="#14B5EA") +
      stat_smooth(se=TRUE, aes(group=1), color = "darkgrey", alpha = 0.25) +
      theme(axis.line = element_line(color = " black"),        
            panel.grid.minor=element_blank(), 
            panel.grid.major=element_blank(), 
            panel.background=element_blank(),
            axis.ticks = element_blank(),
            axis.text.x = element_text(color="#000000", angle = -45, hjust = 0), 
            axis.text.y = element_text(color="#000000")) + 
      labs(fill = "", y = "rpm", x = "stages") +
      expand_limits(y=0) +
      ggtitle(paste(species," - ", gene))
    return(plot_gene)
  }
  
  
  
  if (species=="Pig"){
    gene_expr=norm_counts[gene,]
    Stage=as.factor(cluster)
    
    data_plot=data.frame(as.numeric(gene_expr),Stage)
    
    plot_gene=ggplot(data_plot, aes(x=Stage, y=gene_expr))+
      geom_point(colour="#25B892") +
      stat_smooth(se=TRUE, aes(group=1), color = "darkgrey", alpha = 0.25) +
      theme(axis.line = element_line(color = " black"),        
            panel.grid.minor=element_blank(), 
            panel.grid.major=element_blank(), 
            panel.background=element_blank(), 
            axis.ticks = element_blank(),
            axis.text.x = element_text(color="#000000", angle = -45, hjust = 0), 
            axis.text.y = element_text(color="#000000")) + 
      labs(fill = "", y = "rpm", x = "stages") +
      expand_limits(y=0) +
      ggtitle(paste(species," - ", gene))
    return(plot_gene)
  }
  
  
  
  if (species=="Cow"){
    gene_expr=norm_counts[gene,]
    Stage=as.factor(cluster)
    
    data_plot=data.frame(as.numeric(gene_expr),Stage)
    
    plot_gene=ggplot(data_plot, aes(x=Stage, y=gene_expr))+
      geom_point(color="#C49C2D") +
      stat_smooth(se=TRUE, aes(group=1), color = "darkgrey", alpha = 0.25) +
      theme(axis.line = element_line(color = " black"),        
            panel.grid.minor=element_blank(), 
            panel.grid.major=element_blank(), 
            panel.background=element_blank(), 
            axis.ticks = element_blank(),
            axis.text.x = element_text(color="#000000", angle = -45, hjust = 0), 
            axis.text.y = element_text(color="#000000")) + 
      labs(fill = "", y = "rpm", x = "stages") +
      expand_limits(y=0) +
      ggtitle(paste(species," - ", gene))
    return(plot_gene)
  }
  
  
  
  if (species=="Rabbit"){
    gene_expr=norm_counts[gene,]
    Stage=as.factor(cluster)
    
    data_plot=data.frame(as.numeric(gene_expr),Stage)
    
    plot_gene=ggplot(data_plot, aes(x=Stage, y=gene_expr))+
      geom_point(color="#F3756D") +
      stat_smooth(se=TRUE, aes(group=1), color = "darkgrey", alpha = 0.25) +
      theme(axis.line = element_line(color = " black"),        
            panel.grid.minor=element_blank(), 
            panel.grid.major=element_blank(), 
            panel.background=element_blank(), 
            axis.ticks = element_blank(),
            axis.text.x = element_text(color="#000000", angle = -45, hjust = 0), 
            axis.text.y = element_text(color="#000000")) + 
      labs(fill = "", y = "rpm", x = "stages") +
      expand_limits(y=0) +
      ggtitle(paste(species," - ", gene))
    return(plot_gene)
  }
  
  if (species=="Rhesus"){
    gene_expr=norm_counts[gene,]
    Stage=as.factor(cluster)
    
    data_plot=data.frame(as.numeric(gene_expr),Stage)
    
    plot_gene=ggplot(data_plot, aes(x=Stage, y=gene_expr))+
      geom_point(color="#CD70AD") +
      stat_smooth(se=TRUE, aes(group=1), color = "darkgrey", alpha = 0.25) +
      theme(axis.line = element_line(color = " black"),        
            panel.grid.minor=element_blank(), 
            panel.grid.major=element_blank(), 
            panel.background=element_blank(), 
            axis.ticks = element_blank(),
            axis.text.x = element_text(color="#000000", angle = -45, hjust = 0), 
            axis.text.y = element_text(color="#000000")) + 
      labs(fill = "", y = "rpm", x = "stages") +
      expand_limits(y=0) +
      ggtitle(paste(species," - ", gene))
    return(plot_gene)
  }
  
  
}



