# Jerb Interview

## Overview
As a newly-minted software consultant for The Gnar Company Inc, you've been tasked with creating a MVP for a simple job posting application. This repo contains a skeleton codebase for creating the product along with material supplied by the client. The task is to perform some basic information-gathering and put together a simple 2-3 page form-based Rails app. There are no solid requirements for how it should be architected, but the skeleton already has a database configured. The client has booked 2-4 hours worth of your time.

## Instructions
The co-founder of JerbyJerbs wants to build out a MVP web app to validate an idea. JerbyJerbs is a small company that advertises household job services and assigns the jobs to college students. It is currently a manual process:

1. Job posters call a phone number.
2. The receptionist takes down the information.
3. The receptionist posts it to a white board.
4. JerbyJerbs staff manually matches up posted jobs to job doers.

This is a multi-phased engagement. The goal of the first phase is to automate the job posting process and allow the receptionist(s) to take down the information and record it in the web-app. The web app should also contain a simple job listing page, ordered by date for job doers to view. The client supplied some basic wireframes which outline the basic flow and data elements. The wireframes from the client are in the /docs directory.

## Requirements
Create a rails app based on the specifications listed above. You don't need to go overboard BUT a core level of modern development best practices need to be present. The app also needs to look presentable and have a basic level of responsive behavior. The skeleton codebase contains Bootstrap, but any UI framework may be used. Please feel free to ask questions about the project with other Gnar Team Members.

## Getting Started
The skeleton app contains enough gems to get going, but feel free to add more.



## ------------------------------------------ My Notes ------------------------------------------
Missing Functioanlity
  * Authentication/Authorization
    - for a real app, I would've used something like 'devise'or 'CanCanCan', 
      but since I was limited in my available time, I left it out.
    - as it stands now, anyone can show/add/edit/delete... done correctly,
      only a logged in admin would be able to add/edit/delete postings;
      a non-admin user would be able to only show a listing.

User Interface
  * the 'Action' column in the wireframe didn't make sense, so I just implemented
    a typical set of 'show/edit/delete' links for every row.
  * would've normally used icons, and taking advantage of ajax calls.
  * used DataTables jQuery library for job postings, as it offers nice paging and 
    sorting capabilities.

Database
  * didn't see any evidence of of a database having been 'configured', as stated above,
    so went ahead and created my own schema with the following tables: users, jobs, 
    categories, and statuses. 
  * normally, would have created some admin/crud capability for these tables,
    but instead supplied dummy data via 'seeds.rb'.
  
Rails Version
  * the Gemfile specified rails 5.1.0, which I haven't used yet, and made note of
    some of the differences/new features.









