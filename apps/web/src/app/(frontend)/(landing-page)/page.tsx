import React from 'react'
import HeroSection from './sections/hero'
import About from './sections/about'

export default function HomePage() {
  return (
    <main className="w-full min-h-screen overflow-x-hidden">
      <HeroSection />
      <About />
      {/* Placeholder Section 2 */}
      <section className="h-screen w-full bg-blue-400 flex items-center justify-center">
        <h2 className="text-4xl font-bold text-white">Placeholder Section 2</h2>
      </section>
    </main>
  )
}
