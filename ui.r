library (shiny)
library(shinydashboard)

#configure Header
dbHeader <- dashboardHeader(title = "SaaS Recurring Revenue Model", titleWidth = 400)


#configure Sidebar
dbSidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Acquire",tabName = 'db1', icon = icon('bullseye', lib = "font-awesome")),
        menuItem("Monetize", tabName = 'db2', icon = icon('usd', lib = "font-awesome")),
        menuItem("Retain", tabName = 'db3',  icon = icon('expeditedssl', lib = "font-awesome"))
    )  
)

#configure body
dbBody <- dashboardBody(
    tabItems(
        tabItem(tabName ='db1',h1("Customer Acquisition")),
        tabItem(tabName = 'db2',h1("Customer Monetization")),
        tabItem(tabName = 'db3',h1("Customer Retention"))
        
    )
    
)


ui <- dashboardPage(dbHeader,dbSidebar,dbBody)