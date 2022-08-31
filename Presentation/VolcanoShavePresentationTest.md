Volcano Shaver 
========================================================
author: Justin R. Papreck
date: 9/10/2018
autosize: true
font-family: "Georgia"

<h3> The topographical surface modification app you can't live without </h3>

Because you can...
========================================================

<h3>Why would I want to shave down a volcano, you ask?</h3> 

- Inactive volcanoes are a great place to hike, but offer no rest near the peak
- We can model the flattening of the peak of a topographical map to model this
- Create your own resting area atop New Zealand's famous Mauna Whau for rest or for a place to do yoga

Maunga Whau - Uncut
========================================================
Using simple code with the Shiny Application, the user can input the maximum elevation, and the application truncates, or shaves, the the top of Maunga Whau.  

```r
max <- INPUT
vvTop <- volcano
vvTop[vvTop > max] <- max

p = plot_ly(z = ~vvTop, type = "surface")
```

![Plot 1](www/plot1.png)

***



Shave it down!
========================================================
Maunga Whau shaved at 164 meters.

![Plot 2](www/plot2.png)

Visit ShinyApps Now!
========================================================
- This app is available for download from Shiny Apps 
- It uses the powerful combination of ggplot2 and plotly to execute and produce a 3-D topographical image
- The user input is very easy to use - just slide the bar!

This application can be used at: <a href="https://jrumpelstiltskin.shinyapps.io/volcano-shave/">Volcano-Shaver</a>
