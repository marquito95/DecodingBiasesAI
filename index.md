# Predictive Policing in Chicago
## Introduction

Policy makers nowadays are facing enormous challenges due to the scarce resources in law enforcement. For this reason, introducing data-driven approaches in already existing practices can help enhance proactivity in policing. We can use algorithms to track already existing patterns of crime, identify targets and the social networks of crime, which based on the findings, can potentially predict the expected outcome of the future. Overall, one would expect that such strategies would help prevent time and secure certain areas by reallocating human resources. Thus, it is no surprise that in a city like Chicago, which is particularly segregated, subjected to gang violence, and experiencing extreme crime rates, the police attempted to exploit the opportunities given by data science. 
In our project, we were focusing on the predictive policing algorithm used by Chicago Police Department (CPD) between 2013 and 2019 to identify potential participants in gun violence in the future by creating a so-called Strategic Subjects List (SSL) - often referred to as “the Heat List” -  in which risk scores are allocated to potential participants of gun violence. As the CPD had to face several criticisms, due to inefficiency despite high costs, the lack of transparency, violation of human rights and potentially racial bias, the SSL system was quietly shut down. 
As Chicago’s demographic composition is rather diverse, in our report we aim to answer the following research question: 
Are individuals ascribed systematically higher scores based on their racial profiles and thus leading to a racial bias in the SSL system? 
To answer this question, we exploited the open data policy of Chicago, which provided access to the datasets that we needed. This gave us the opportunity to analyse the SSL score system thoroughly and look for accuracy and fairness in the algorithm. In the first part of our report, firstly we present our analysis in this report, following a brief overview of predictive policing practices, followed by the context of Chicago and circumstances of the “Heat list”. In the second part, we introduce our methodology, provide a descriptive analysis of the dataset and present our statistical analysis of the dataset. 

### Predictive Policing in Chicago
In our report we use the following definition to refer to predictive policing practices: “Predictive policing is the collection and analysis of data about previous crimes for identification and statistical prediction of individuals or geospatial areas with an increased probability of criminal activity to help developing policing intervention and prevention strategies and tactics” (Meijer and Wessels, 2019). 
When we are talking about predictive policing, computer scientists can rely on wide-range of academic literature in criminology. Tayebi and Glässer distinguish between five potential resources for predictive policing algorithms: co-offending network disruption, organized crime detection, suspect investigation, co-offence prediction and personalized crime location prediction (Tayebi and Glässer, 2016). These align with the already existing categories of analysis techniques used by police departments, that are: analysis of space, used to identify criminal hot spots in areas with higher likelihood of crime, time and space, used to include the temporal factor in crime analysis and social networks, which instead of focusing on location detection, it attempts to detect persons of interest (Bachner, 2014). 
Although the results of empirical research are ambiguous, and while some authors (Mohler et al. 2015) states that the predictive algorithm did help reduce crime rates, and better identify potential hotspots, while other authors (such as Hunt et al., 2014) argue that there was no significant reduction in crime thanks to the algorithm compared to the conventional law enforcement practices. Overall in crime reduction, as the evidence-based policing matrix by Lum, Koper and Telep shows, place-based crime strategies are found to be more effective than offender-based approaches, however, already existing approaches show that strategies tend to favour offender-based, reactive approaches (Lum, Koper and Telep, 2011).
Based on research, currently dozens of US cities, such as Los Angeles, Oklahoma, Elgin, Richmond, Santa Cruz  apply the predictive policing algorithm called PredPol all over the US. While some of them are open about it, many do not reveal information about their practices. This is a location-based algorithm which gives hints to the police to patrol or surveil specific areas more heavily predicted by the algorithm (Haskins, 2019). However, in many cases, such algorithms are often shut down due to public discontent. According to a local activist in Los Angeles, the LA Police Department was using both location-based (PredPol) and individual-based policing algorithms (Operation Laser), and when the list of identified targets was revealed, it contained predominantly (90-95%) black and brown people. Eventually both projects were shut down in 2019 and 2020, as the inefficiency, inherited bias and public discontent increased (Ryan-Mosley and Strong, 2020). At the same time, while certain companies, including PredPol, or Keystats and HunchLab have contracts with police departments all over the country, New York PD has chosen to build its own predictive policing system, based on already existing criminal data (Díaz, 2021). Nonetheless, in many cases, the data that the algorithms are fed on are usually hard to obtain and the mechanisms are non-transparent (Heilweil, 2020).  Besides Los Angeles and New York, the most important frontrunner of using predictive policing algorithms was the Chicago PD, which used an algorithm developed by the Chicago ITT to analyze past arrests for violent crime, weapons offenses or narcotics, age and most recent arrest, trend line of criminal activity etc. (Ferguson, 2017). 
Overall, automation of predictive policing by using algorithms has been favoured by many cities and police departments, due to its efficiency and more objective nature to make decisions than humans, thanks to machine learning (Heaven, 2020). However, the objectiveness of these have been contested several times, as algorithms can perpetuate already existing biases.

### Controversies around predictive policing: 
Most of the predictive models are mainly data driven instead of theory driven, which means that it puts too much emphasis on correlations, instead of causality. Without properly understanding the deficiencies in already existing conventional policing methods, one can easily come to false conclusions. Furthermore,  it poses accountability problems and it becomes unclear who is responsible for decision-making when there is full reliance on predictive algorithms. For this reason, we can argue that predictive policing algorithms can only serve as complementary to the conventional methods. It can also lead to stigmatizing individuals and groups and concerns regarding privacy and ethics, as many times, the personal data of the potential offenders are published, or their enhanced surveillance poses a threat on individual liberties and freedom (Meijer and Wessels, 2019). 
Furthermore, input datas might not be free from human biases and the outcome can lead to misuse of the data and biased behaviour. In practice, police often tend to arrest more black people, or individuals from other minority groups. If we are talking about location-biased algorithms, the algorithm will be redirecting police officers towards those neighbourhoods resulting in over policing in those areas, and potentially underpolicing in other parts of the city (Heaven, 2021). The empirical research also underlines this claim, as a group of researchers were trying to reveal these biases, and they have found significant discrepancies. In areas with low-crime rate, the algorithm only reported 20% of the hotspots, while in neighbourhoods with high crime rate, it overestimated the number of hotspots (Akpinar, De-Arteaga and Chouldechova, 2021). 
At the same time, in many cases, the Police Departments do not have the capacity or the expertise to understand how the algorithms work. Oftentimes, they keep purchasing it, without having background knowledge, which leads to the fact that several algorithms were trained with data from outside of the US, such as Canada or European countries, where the proportion of black population is significantly lower. This undermines the claim that the main problem with predictive policing is the data that the algorithm is based on, especially when racial biases in conventional arrests are pre-existing (ibid.)
To conclude, we can see that predictive policing algorithms are far from being perfect, and still provide a lot of ground for biases and unbalance, which has serious consequences for the future. Overall, the lack of transparency that surrounds these algorithms can lead to enhanced distrust, and the over policing can lead to unfair arrests and aggravate the assaults on minorities. 

### Context of Chicago
The City of Chicago is located on Lake Michigan, in Cook County, in northeastern Illinois.
Crime rate is really high and has increased over the past year, especially the gun violences.  
In order to try to reduce the criminality in Chicago, there have been policy initiatives to try innovative tools in order to tackle the insecurity issue in the city.

As stated by Tayebi and Glässer, using these mechanisms can lead to enhanced decision making processes, especially that co-offending networks have been particularly important when analyzing criminal patterns (Tayebi and Glässer, 2016). The Chicago Police Department also used this idea to implement their predictive policing strategy, which was highly inspired by the work of Papachristos and his colleagues, who focused on the sociology of criminal networks (Saunders, Hunt and Hollywood, 2016).
 The Strategic Subject List is created by the Illinois Institute of Technology, it was funded through a Department of Justice Bureau of Justice Assistance grant. The overall goal of the algorithm is to create a Risk Assessment Score - SSL (strategic subject List). The idea behind this score is to assess an individual’s probability of being involved in a shooting incident either as a victim or an offender. 
Scores are using a scale ranging from 0 (extremely low risk) to 500 (extremely high risk).
To build this algorithm, the Chicago Police Department (CPD) collected data on all arrested people in the prior four years. 
The algorithm isn’t public but we can find a version of the list (the database we used) in the open data portal of the City of Chicago. This list has been anonymised.  The Open data policy of Chicago was put as a priority for the development of the city since 2012 and is nownow quite developed (Open data portal and github page). 


# Part II: Researching bias in the dataset
## Header 2
### Header 3
![Image](src)


- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/marquito95/DecodingBiasesAI/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
