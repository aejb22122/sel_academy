# Multiple choise question analysis 

ctab <- function(vec){
        var<-list(0)
        prop<-list(0)
        tab<-data.frame(Q=0,Prop=0)
        for(i in 1:nlevels(vec)){
                var[i]<-levels(vec)[i]
                prop[i]<-mean(vec==levels(vec)[i])
        }
        var <- unlist(var)
        prop <- unlist(prop)
        tab <- cbind(var,prop) %>% as.data.frame()
        names(tab)<-c("Q","Prop")
        tab
}

ctab.mc <- function(x){
        ind.tabs <-list()
        x.codes <- ncol(x)
        x.names <- names(x)
        for(i in 1:x.codes){
                ind.tabs[[i]]<-ctab(x[,i])
        }
        all.merged <-merge(x=ind.tabs[[1]],y=ind.tabs[[2]],by="Q")
        for(i in 3:x.codes){
                all.merged<-merge(x=all.merged,y=ind.tabs[[i]],by="Q")
        }
        for(i in 1:x.codes){
                names(all.merged)[i+1]<-x.names[i]
        }
        
        all.merged
}
