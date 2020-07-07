
## this takes a long time (FYI)... read in CREMP_distances_all.csv for analyses

library(sf)
library(geosphere)
library(osmdata)
library(rio)
library(ggplot2)
library(geosphere)
library(purrr)
library(progress)
library(magrittr)
library(binr)
library(tidyverse)
library(dygraphs)
library(htmlwidgets)


# spDistPoint2Line <- function (p, line, distfun)
# { 
#   ## rewrite of internal function from geosphere
#   test <- !sp::is.projected(line)
#   if (!isTRUE(test)) {
#     if (is.na(test)) {
#       warning("Coordinate reference system of SpatialPolygons object is not set. Assuming it is degrees (longitude/latitude)!")
#     }
#     else {
#       stop("Points are projected. They should be in degrees (longitude/latitude)")
#     }
#   }
#   
#   x <- line@lines
#   n <- length(x)
#   res <- matrix(nrow = nrow(p), ncol = 3)
#   colnames(res) <- c("distance", "lon", "lat")
#   
#   line_coords <- map(x, ~(map(.@Lines, ~(.@coords)))) #basically an unlist
#   pb <- progress_bar$new(
#     total = length(line_coords),
#     format = "(:spin) :current of :total, :percent, eta: :eta"
#   )
#   res[] <- Inf
#   result <- reduce(
#     .x = line_coords,
#     .init = res,
#     .f = function(res, crd){
#       pb$tick()
#       crd <- crd[[1]]
#       r <- dist2Line(p, crd, distfun) # have to live without ID
#       k <- r[, 1] < res[, 1]
#       res[k, ] <- r[k, ]
#       return(res)
#     }
#   )
#   return(result)
# }
# 
# dist2Line <- function (p, line, distfun = distGeo) 
# {
#   p <- geosphere:::.pointsToMatrix(p)
#   if (inherits(line, "SpatialPolygons")) {
#     line <- methods::as(line, "SpatialLines")
#   }
#   if (inherits(line, "SpatialLines")) {
#     return(spDistPoint2Line(p, line, distfun))
#   }
#   
#   line <- geosphere:::.pointsToMatrix(line)
#   line1 <- line[-nrow(line), , drop = FALSE]
#   line2 <- line[-1, , drop = FALSE]
#   seglength <- distfun(line1, line2)
#   
#   res <-
#     p %>%
#     array_branch(1) %>%
#     map(
#       function(xy){
#         crossdist <- abs(dist2gc(line1, line2, xy))
#         trackdist1 <- alongTrackDistance(line1, line2, xy)
#         trackdist2 <- alongTrackDistance(line2, line1, xy)
#         mintrackdist <- pmin(trackdist1, trackdist2)
#         maxtrackdist <- pmax(trackdist1, trackdist2)
#         crossdist[maxtrackdist >= seglength] <- NA
#         nodedist <- distfun(xy, line)
#         warnopt = getOption("warn")
#         options(warn = -1)
#         distmin1 <- min(nodedist, na.rm = TRUE)
#         distmin2 <- min(crossdist, na.rm = TRUE)
#         options(warn = warnopt)
#         if (distmin1 <= distmin2) {
#           j <- which.min(nodedist)
#           return(c(distmin1, line[j, ]))
#         }
#         else {
#           j <- which.min(crossdist)
#           if (trackdist1[j] < trackdist2[j]) {
#             bear <- bearing(line1[j, ], line2[j, ])
#             pt <- destPoint(line1[j, ], bear, mintrackdist[j])
#             return(c(crossdist[j], pt))
#           }
#           else {
#             bear <- bearing(line2[j, ], line1[j, ])
#             pt <- destPoint(line2[j, ], bear, mintrackdist[j])
#             return(c(crossdist[j], pt))
#           }
#         }
#       }
#     ) %>%
#     simplify %>%
#     matrix(ncol = 3, byrow = TRUE)
#   
#   colnames(res) <- c("distance", "lon", "lat")
#   return(res)
# }
# 
# 
# setwd('C:/Users/cara.estes/Documents')
# 
# 
# CREMP <- import("Summer_2020/ArcGIS_Analyses/CREMP_Locations.xls")%>%
#   select(sitename,latDD,lonDD)
# 
# CREMP_locations <- CREMP %>%
#   st_as_sf(coords = c('lonDD','latDD')) %>%
#   st_set_crs(4326)
# 
# osm_box <- getbb (place_name = "Florida") %>%
#   opq() %>%
#   add_osm_feature("natural","coastline") %>%
#   osmdata_sf()
# 
# # use dist2Line from geosphere - only works for WGS84
# #data
# dist <- geosphere::dist2Line(p = st_coordinates(CREMP_locations),
#                              line = st_coordinates(osm_box$osm_lines)[,1:2])
# 
# CREMP_distances <- cbind( CREMP %>% 
#   rename(y=latDD,x=lonDD),dist) %>%
#   mutate(miles=distance/1609)
# 
# # export(CREMP_distances,"Summer_2020/CREMP_distance/CREMP_distances_all.csv")
# 
# ## plot
# 
# ggplot() + 
#   geom_sf(data=osm_box$osm_lines) +
#   geom_sf(data=CREMP_locations) +
#   coord_sf(xlim = c(-80,-83),ylim = c(27.5,24))+
#   geom_segment(data=CREMP_distances,aes(x=x,y=y,xend=lon,yend=lat))

#ggsave("Summer_2020/CREMP_distance/CREMP_sites_from_land.png")



### Compare distances farther from those closer... first get the range values (CREMP_distances_all.csv) 

CREMP_distances <- read_csv("Summer_2020/CREMP_distance/CREMP_distances_all.csv")

## add back subregionID
CREMP_ID <- import("Summer_2020/ArcGIS_Analyses/CREMP_Locations.xls") %>%
  select(sitename,subRegionI)

CREMP_distances_w_subregion <- left_join(CREMP_distances,CREMP_ID)
CREMP_distances_w_subregion <- data.frame(unique(CREMP_distances_w_subregion))

## filter out DT,LK,MK,UK

keys <- c("DT","LK","MK","UK")


## arrange() puts the distances in ascending order
CREMP_Keys <- CREMP_distances_w_subregion %>%
  filter(subRegionI %in% keys) %>%
  select(sitename,distance,subRegionI,miles) %>%
  arrange(distance)

## Average the distances for reefs with multiple station locations

Average_distance <- CREMP_Keys[duplicated(CREMP_Keys$sitename)|duplicated(CREMP_Keys$sitename, fromLast = TRUE),]

Average_distance_merge <- Average_distance %>%
 group_by(sitename) %>%
  mutate(KMAverage = mean(distance)) %>%
  mutate(MilesAverage = mean(miles)) %>%
  ungroup() %>%
  select(sitename,KMAverage,subRegionI,MilesAverage) %>%
  unique()
  
colnames(Average_distance_merge) <- c("sitename","distance","subRegionI","miles")
  
# Average_distance_merge <- ddply(Average_distance, 'sitename', summarize, distance =mean(distance), 
#                                 subRegionI=head(subRegionI,1), miles=head(miles,1))

test <- anti_join(CREMP_Keys,Average_distance_merge, by = "sitename")
CREMP_Keys_average <- rbind(test,Average_distance_merge)



## Combine with CHI and RHI data from 14_CHI_RHI_MPAs

All_CHI <- read_csv("Summer_2020/Dygraphs_CHI_RHI/CHI_combined.csv")
CHI_distance <- left_join(All_CHI,CREMP_Keys_average, by = "sitename")

All_RHI <- read_csv("Summer_2020/Dygraphs_CHI_RHI/RHI_combined.csv")
RHI_distance <- left_join(All_RHI,CREMP_Keys_average, by = "sitename")


## Pull out only the reefs and miles to get bins and distance code for CHI and RHI

CHI_reefs <- CHI_distance %>%
  select(sitename,miles) %>%
  unique()

## Find the bins just to break up the data into shallow, mid, and offshore for CHI

CHI_bins <- bins(CHI_reefs$miles,target.bins = 3, max.breaks = NA, exact.groups = TRUE,
                 minpts = 1)
view(CHI_bins$binct)


CHI_distance_shallow <- subset(CHI_reefs, miles <=  4.80572166136828)
CHI_distance_mid <- subset(CHI_reefs, miles >  4.80572166136828 & miles <=  6.31235987622819)
CHI_distance_offshore <- subset(CHI_reefs, miles >  6.31235987622819 & miles < Inf)

### 1 will be considered shallow, 2 mid, and 3 offshore

CHI_distance_shallow$DistanceCode <- "1"
CHI_distance_mid$DistanceCode <- "2"
CHI_distance_offshore$DistanceCode <- "3"

CHI_distance_code <- rbind(CHI_distance_shallow,CHI_distance_mid,CHI_distance_offshore)



RHI_reefs <- RHI_distance %>%
  select(sitename,miles) %>%
  unique()

## Find the bins just to break up the data into shallow, mid, and offshore for RHI

RHI_bins <- bins(RHI_reefs$miles,target.bins = 3, max.breaks = NA, exact.groups = TRUE,
                 minpts = 1)
view(RHI_bins$binct)


RHI_distance_shallow <- subset(RHI_reefs, miles <=  4.80572166136828)
RHI_distance_mid <- subset(RHI_reefs, miles >  4.80572166136828 & miles <=  6.31235987622819)
RHI_distance_offshore <- subset(RHI_reefs, miles >  6.31235987622819 & miles < Inf)

### 1 will be considered shallow, 2 mid, and 3 offshore

RHI_distance_shallow$DistanceCode <- "1"
RHI_distance_mid$DistanceCode <- "2"
RHI_distance_offshore$DistanceCode <- "3"

RHI_distance_code <- rbind(RHI_distance_shallow,RHI_distance_mid,RHI_distance_offshore)


## these are the same codes for each reef.... now merge the DistanceCode with CHI and RHI averages

CHI_distance_code <- left_join(All_CHI,CHI_distance_code)

RHI_distance_code <- left_join(All_RHI,RHI_distance_code)

## CHI plot

CHI_1_graph <- CHI_distance_code %>%
  filter(DistanceCode == "1") %>%
  group_by(Year) %>%
  mutate(CHIShallow = mean(CHI_Average)) %>%
  ungroup() %>%
  select(Year,CHIShallow) %>%
  unique()

CHI_2_graph <- CHI_distance_code %>%
  filter(DistanceCode == "2") %>%
  group_by(Year) %>%
  mutate(CHIMid = mean(CHI_Average)) %>%
  ungroup() %>%
  select(Year,CHIMid) %>%
  unique()


CHI_3_graph <- CHI_distance_code %>%
  filter(DistanceCode == "3") %>%
  group_by(Year) %>%
  mutate(CHIOffshore = mean(CHI_Average)) %>%
  ungroup() %>%
  select(Year,CHIOffshore) %>%
  unique()

## merge
CHI_distance_graph <- Reduce(merge,list(CHI_1_graph,CHI_2_graph,CHI_3_graph))

setwd("C:/Users/cara.estes/Documents/Summer_2020/Dygraphs_CHI_RHI/plots")

dygraph(CHI_distance_graph, main = 'CHI Trends <br> Distance from Shore') %>%
  dyAxis("y", label = "CHI %",valueRange = c(0,100)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)%>%
  saveWidget(file=paste0( getwd(), "/CHI_distance_from_shore.html"))



RHI_1_graph <- RHI_distance_code %>%
  filter(DistanceCode == "1") %>%
  group_by(Year) %>%
  mutate(RHIShallow = mean(RHI_Average)) %>%
  ungroup() %>%
  select(Year,RHIShallow) %>%
  unique()

RHI_2_graph <- RHI_distance_code %>%
  filter(DistanceCode == "2") %>%
  group_by(Year) %>%
  mutate(RHIMid = mean(RHI_Average)) %>%
  ungroup() %>%
  select(Year,RHIMid) %>%
  unique()


RHI_3_graph <- RHI_distance_code %>%
  filter(DistanceCode == "3") %>%
  group_by(Year) %>%
  mutate(RHIOffshore = mean(RHI_Average)) %>%
  ungroup() %>%
  select(Year,RHIOffshore) %>%
  unique()

## merge
RHI_distance_graph <- Reduce(merge,list(RHI_1_graph,RHI_2_graph,RHI_3_graph))


dygraph(RHI_distance_graph, main = 'RHI Trends <br> Distance from Shore') %>%
  dyAxis("y", label = "RHI",valueRange = c(0,5)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)%>%
  saveWidget(file=paste0( getwd(), "/RHI_distance_from_shore.html"))



