import React from 'react'
import { Route, Routes } from 'react-router-dom'
import Home from '../components/Home'
import Reminder from '../components/reminder/Reminder'
import LearnMore from '../components/learn-more/LearnMore'
import AboutUs from '../components/about-us/AboutUs'

export default function IndexRouter() {
  return (
    <Routes>
        <Route path='/' element={<Home/>}></Route>
        <Route path='reminder' element={<Reminder/>}></Route>
        <Route path='learn-more' element={<LearnMore/>}></Route>
        <Route path='about-us' element={<AboutUs/>}></Route>
    </Routes>
  )
}
