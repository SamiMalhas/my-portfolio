import React from 'react'
import HeroText from '../components/hero-text'

export default function HeroSection() {
  return (
    <section className="flex items-start justify-center h-screen min-h-screen overflow-hidden md:items-center">
      <HeroText />
    </section>
  )
}
