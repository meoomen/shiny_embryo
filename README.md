# shiny_embryo
Scripts for shiny app to visualize mammalian preimplantation embryo data in mouse, pig, cow, rabbit and rhesus. 

For easy exploration of the data, use our [online shiny app](https://embryo.helmholtz-munich.de/shiny_embryo/)/ 

## Running our app locally
In case the shiny app website is down, it is also possible to download the shiny app here and run the shiny app locally through Rstudio. 

For this make sure to have Rstudio installed with all library packages installed as listed in the first lines of the `ui.R`. 

You can then run the app with `runApp(~/path_to_local_shiny_embryo_gitdir/)` or you can directly run `shiny::runGitHub(‘shiny_embryo’, ‘meoomen’)` without downloading the git repo first. 

Please contact `marlies.oomen@helmholtz-munich.de` for any technical questions or `torres-padilla@helmholtz-muenchen.de` for any questions regarding our paper.  

